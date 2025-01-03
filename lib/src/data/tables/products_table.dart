import 'package:cafe_order/src/data/co_db.dart';
import 'package:drift/drift.dart';

@DataClassName('ProductsEntity')
class Products extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get imageName => text()();
  RealColumn get price => real()();
  IntColumn get count => integer()();
  IntColumn get productType => integer().references(ProductTypes, #id)();
}

class ProductWithType {
  final ProductsEntity product;
  final ProductTypesEntity type;

  const ProductWithType(this.product, this.type);
}
