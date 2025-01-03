import 'package:cafe_order/src/data/co_db.dart';
import 'package:drift/drift.dart';

@DataClassName('OrdersEntity')
class Orders extends Table {
  IntColumn get id => integer().autoIncrement()();
  RealColumn get totalPrice => real().clientDefault(() => 0)();
  IntColumn get cafeTable => integer().references(CafeTables, #id)();
  DateTimeColumn get creationTime =>
      dateTime().clientDefault(() => DateTime.now())();
}

final class OrdersWithTable {
  final OrdersEntity order;
  final TablesEntity table;
  const OrdersWithTable(this.order, this.table);
}
