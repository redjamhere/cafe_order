import 'package:drift/drift.dart';

@DataClassName('ProductTypesEntity')
class ProductTypes extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}
