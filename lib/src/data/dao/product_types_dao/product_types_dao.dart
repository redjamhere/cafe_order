import 'package:drift/drift.dart';

import '../../co_db.dart';

part 'product_types_dao.g.dart';

@DriftAccessor(tables: [ProductTypes])
class ProductTypesDao extends CoDao<ProductTypesEntity, ProductTypesCompanion>
    with _$ProductTypesDaoMixin {
  ProductTypesDao(super.db);

  @override
  Future<int> createEntity(entity) async {
    return await into(productTypes).insert(entity);
  }

  @override
  Future<void> deleteEntity(entity) async {
    await delete(productTypes).delete(entity);
  }

  @override
  Future<List<ProductTypesEntity>> selectAllEntity() async {
    return await select(productTypes).get();
  }

  @override
  Future<ProductTypesEntity> selectEntityById(int id) async {
    return await (select(productTypes)..where((pt) => pt.id.equals(id)))
        .getSingle();
  }

  @override
  Future<bool> updateEntity(entity) async {
    return await update(productTypes).replace(entity);
  }
}
