import 'package:drift/drift.dart';

@DataClassName('TablesEntity')
class CafeTables extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}
