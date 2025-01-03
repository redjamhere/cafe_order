import 'package:drift/drift.dart';

import '../../co_db.dart';

part 'tables_dao.g.dart';

@DriftAccessor(tables: [CafeTables])
class TablesDao extends CoDao<TablesEntity, CafeTablesCompanion>
    with _$TablesDaoMixin {
  TablesDao(super.db);

  @override
  Future<int> createEntity(entity) async {
    return await into(cafeTables).insert(entity);
  }

  @override
  Future<bool> updateEntity(entity) async {
    return await update(cafeTables).replace(entity);
  }

  @override
  Future<void> deleteEntity(entity) async {
    await delete(cafeTables).delete(entity);
  }

  @override
  Future<List<TablesEntity>> selectAllEntity() async {
    return select(cafeTables).get();
  }

  @override
  Future<TablesEntity> selectEntityById(int id) async {
    return await (select(cafeTables)..where((t) => t.id.equals(id)))
        .getSingle();
  }
}
