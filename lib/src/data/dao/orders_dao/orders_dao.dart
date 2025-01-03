import 'package:drift/drift.dart';

import '../../co_db.dart';

part 'orders_dao.g.dart';

@DriftAccessor(tables: [Orders])
class OrdersDao extends CoDao<OrdersEntity, OrdersCompanion>
    with _$OrdersDaoMixin {
  OrdersDao(super.db);
  @override
  Future<int> createEntity(OrdersCompanion entity) async {
    return await into(orders).insert(entity);
  }

  @override
  Future<void> deleteEntity(OrdersCompanion entity) async {
    await delete(orders).delete(entity);
  }

  @override
  Future<List<OrdersEntity>> selectAllEntity() async {
    return await select(orders).get();
  }

  Future<List<OrdersWithTable>> selectOrdersWithTable() async {
    final query = select(orders).join([
      innerJoin(cafeTables, cafeTables.id.equalsExp(orders.cafeTable)),
    ]);

    final rows = await query.get();

    return rows.map((row) {
      return OrdersWithTable(
        row.readTable(orders),
        row.readTable(cafeTables),
      );
    }).toList();
  }

  Future<OrdersWithTable> selectOrdersWithTableById(int id) async {
    final query = select(orders).join([
      innerJoin(cafeTables, cafeTables.id.equalsExp(orders.cafeTable)),
    ])
      ..where(orders.id.equals(id));

    final row = await query.getSingle();

    return OrdersWithTable(
      row.readTable(orders),
      row.readTable(cafeTables),
    );
  }

  @override
  Future<OrdersEntity> selectEntityById(int id) async {
    return await (select(orders)..where((o) => o.id.equals(id))).getSingle();
  }

  @override
  Future<bool> updateEntity(OrdersCompanion entity) async {
    return await update(orders).replace(entity);
  }

  Stream<OrdersWithTable> orderByIdWatcher(int id) {
    final query = select(orders).join([
      innerJoin(cafeTables, cafeTables.id.equalsExp(orders.cafeTable)),
    ])
      ..where(orders.id.equals(id));

    return query.watchSingle().map((row) {
      final order = row.readTable(orders);
      final table = row.readTable(cafeTables);
      return OrdersWithTable(order, table);
    });
  }
}
