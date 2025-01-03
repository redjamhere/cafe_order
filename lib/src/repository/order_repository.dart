import 'package:cafe_order/src/data/co_db.dart';
import 'package:cafe_order/src/models/models.dart';
import 'package:drift/drift.dart';

abstract class OrderRepository {
  const OrderRepository();
  Future<int> createOrder(OrderModelCreated data);
  Future<bool> updateOrder(OrderModel data);
  Future<OrderModel> getOrderById(int id);
  Future<List<OrderModel>> getAllOrders();
}

final class OrderRepositoryDriftImpl extends OrderRepository {
  const OrderRepositoryDriftImpl({required OrdersDao dao}) : _dao = dao;
  final OrdersDao _dao;

  @override
  Future<int> createOrder(OrderModelCreated data) async {
    return await _dao.createEntity(OrdersCompanion.insert(
      cafeTable: data.table.id,
      totalPrice: Value(data.totalPrice.toDouble()),
    ));
  }

  @override
  Future<List<OrderModelDefault>> getAllOrders() async {
    var result = await _dao.selectOrdersWithTable();
    return result
        .map(
          (o) => OrderModelDefault(
              id: o.order.id,
              totalPrice: o.order.totalPrice,
              table: TableModel(id: o.table.id, name: o.table.name),
              createdAt: o.order.creationTime),
        )
        .toList();
  }

  @override
  Future<OrderModelDefault> getOrderById(int id) async {
    var result = await _dao.selectOrdersWithTableById(id);
    return OrderModelDefault(
        id: result.order.id,
        totalPrice: result.order.totalPrice,
        table: TableModel(id: result.table.id, name: result.table.name),
        createdAt: result.order.creationTime);
  }

  @override
  Future<bool> updateOrder(OrderModel data) async {
    return await _dao.updateEntity(OrdersCompanion(
      id: Value((data as OrderModelDefault).id),
      cafeTable: Value(data.table.id),
      totalPrice: Value(data.totalPrice.toDouble()),
    ));
  }

  Stream<OrderModel> orderByIdChanges(int id) {
    return _dao.orderByIdWatcher(id).map((e) {
      // Convert the Drift Order to an OrderModel
      return OrderModel.defaultOrder(
          id: e.order.id,
          totalPrice: e.order.totalPrice,
          table: TableModel(id: e.table.id, name: e.table.name),
          createdAt: e.order.creationTime);
    });
  }
}
