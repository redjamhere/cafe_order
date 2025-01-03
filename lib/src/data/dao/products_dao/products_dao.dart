import 'package:drift/drift.dart';

import '../../co_db.dart';

part 'products_dao.g.dart';

@DriftAccessor(tables: [Products])
class ProductsDao extends CoDao<ProductsEntity, ProductsCompanion>
    with _$ProductsDaoMixin {
  ProductsDao(super.db);
  @override
  Future<int> createEntity(ProductsCompanion entity) async {
    return await into(products).insert(entity);
  }

  @override
  Future<void> deleteEntity(ProductsCompanion entity) async {
    await delete(products).delete(entity);
  }

  @override
  Future<List<ProductsEntity>> selectAllEntity() async {
    return await select(products).get();
  }

  @override
  Future<ProductsEntity> selectEntityById(int id) async {
    return await (select(products)..where((p) => p.id.equals(id))).getSingle();
  }

  @override
  Future<bool> updateEntity(ProductsCompanion entity) async {
    return await update(products).replace(entity);
  }

  Future<List<ProductWithType>> selectAllProductWithType() async {
    final query = select(products).join([
      innerJoin(productTypes, productTypes.id.equalsExp(products.productType)),
    ]);

    final rows = await query.get();

    return rows.map((row) {
      return ProductWithType(
        row.readTable(products),
        row.readTable(productTypes),
      );
    }).toList();
  }

  Future<List<ProductWithType>> selectProductsByTypeId(int typeId) async {
    final query = select(products).join([
      innerJoin(productTypes, productTypes.id.equalsExp(products.productType))
    ])
      ..where(productTypes.id.equals(typeId));

    final rows = await query.get();

    return rows.map((row) {
      return ProductWithType(
        row.readTable(products),
        row.readTable(productTypes),
      );
    }).toList();
  }

  Future<ProductWithType> selectProductWithTypeById(int id) async {
    final query = select(products).join([
      innerJoin(productTypes, productTypes.id.equalsExp(products.productType)),
    ])
      ..where(products.id.equals(id));

    final row = await query.getSingle();

    return ProductWithType(
      row.readTable(products),
      row.readTable(productTypes),
    );
  }

  Stream<List<ProductWithType>> productsWatcher(int typeId) {
    final query = select(products).join([
      innerJoin(productTypes, productTypes.id.equalsExp(products.productType))
    ])
      ..where(productTypes.id.equals(typeId));
    return query.watch().map((rows) {
      return rows
          .map((e) =>
              ProductWithType(e.readTable(products), e.readTable(productTypes)))
          .toList();
    });
  }
}
