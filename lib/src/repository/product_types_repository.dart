import 'package:cafe_order/src/data/co_db.dart';
import 'package:cafe_order/src/models/models.dart';
import 'package:drift/drift.dart';

abstract class ProductTypesRepository {
  const ProductTypesRepository();
  Future<int> createProductType(ProductTypeModel data);
  Future<bool> updateProductType(ProductTypeModel data);
  Future<ProductTypeModel> getProductTypeById(int id);
  Future<List<ProductTypeModel>> getAllProductType();
}

final class ProductTypeRepositoryDriftImpl extends ProductTypesRepository {
  const ProductTypeRepositoryDriftImpl({required ProductTypesDao dao})
      : _dao = dao;
  final ProductTypesDao _dao;

  @override
  Future<int> createProductType(ProductTypeModel data) async {
    return await _dao
        .createEntity(ProductTypesCompanion.insert(name: data.name));
  }

  @override
  Future<List<ProductTypeModel>> getAllProductType() async {
    var result = await _dao.selectAllEntity();
    return result
        .map((pt) => ProductTypeModel(id: pt.id, name: pt.name))
        .toList();
  }

  @override
  Future<ProductTypeModel> getProductTypeById(int id) async {
    var result = await _dao.selectEntityById(id);
    return ProductTypeModel(id: result.id, name: result.name);
  }

  @override
  Future<bool> updateProductType(ProductTypeModel data) async {
    return await _dao.updateEntity(
        ProductTypesCompanion(id: Value(data.id), name: Value(data.name)));
  }
}
