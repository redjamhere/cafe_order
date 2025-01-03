import 'package:cafe_order/src/data/co_db.dart';
import 'package:cafe_order/src/models/table_model/table_model.dart';
import 'package:drift/drift.dart';

abstract class TableRepository {
  const TableRepository();

  Future<int> createTable(TableModel data);

  Future<bool> updateTable(TableModel data);

  Future<TableModel> getTableById(int id);

  Future<List<TableModel>> getAllTable();
}

final class TableRepositoryDriftImpl extends TableRepository {
  const TableRepositoryDriftImpl({required TablesDao dao}) : _dao = dao;

  final TablesDao _dao;

  @override
  Future<int> createTable(TableModel data) async {
    return await _dao.createEntity(CafeTablesCompanion.insert(name: data.name));
  }

  @override
  Future<TableModel> getTableById(int id) async {
    var result = await _dao.selectEntityById(id);
    return TableModel(id: result.id, name: result.name);
  }

  @override
  Future<bool> updateTable(TableModel data) async {
    return await _dao.updateEntity(
        CafeTablesCompanion(id: Value(data.id), name: Value(data.name)));
  }

  @override
  Future<List<TableModel>> getAllTable() async {
    var result = await _dao.selectAllEntity();
    return result.map((t) => TableModel(id: t.id, name: t.name)).toList();
  }
}
