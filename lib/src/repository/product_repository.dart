import 'package:cafe_order/src/data/co_db.dart';
import 'package:cafe_order/src/models/models.dart';
import 'package:drift/drift.dart';

abstract class ProductRepository {
  const ProductRepository();
  Future<int> createProduct(ProductModel data);
  Future<bool> updateProduct(ProductModel data);
  Future<ProductModel> getProductById(int id);
  Future<List<ProductModel>> getAllProduct();
}

final class ProductRepositoryDriftImpl extends ProductRepository {
  const ProductRepositoryDriftImpl({required ProductsDao dao}) : _dao = dao;
  final ProductsDao _dao;

  @override
  Future<int> createProduct(ProductModel data) async {
    return await _dao.createEntity(ProductsCompanion.insert(
        name: data.name,
        productType: data.type.id,
        imageName: data.imageName,
        price: data.price.toDouble(),
        count: data.count));
  }

  @override
  Future<List<ProductModel>> getAllProduct() async {
    var result = await _dao.selectAllProductWithType();
    return result
        .map((pt) => ProductModel(
            id: pt.product.id,
            name: pt.product.name,
            imageName: pt.product.imageName,
            price: pt.product.price,
            count: pt.product.count,
            type: ProductTypeModel(id: pt.type.id, name: pt.type.name)))
        .toList();
  }

  @override
  Future<ProductModel> getProductById(int id) async {
    var result = await _dao.selectProductWithTypeById(id);
    return ProductModel(
        id: result.product.id,
        name: result.product.name,
        imageName: result.product.imageName,
        price: result.product.price,
        count: result.product.count,
        type: ProductTypeModel(id: result.type.id, name: result.type.name));
  }

  Future<List<ProductModel>> getProductsByTypeId(int typeId) async {
    var result = await _dao.selectProductsByTypeId(typeId);
    return result
        .map((p) => ProductModel(
            id: p.product.id,
            type: ProductTypeModel(id: p.type.id, name: p.type.name),
            name: p.product.name,
            count: p.product.count,
            price: p.product.price,
            imageName: p.product.imageName))
        .toList();
  }

  @override
  Future<bool> updateProduct(ProductModel data) async {
    return await _dao.updateEntity(ProductsCompanion(
        id: Value(data.id),
        name: Value(data.name),
        imageName: Value(data.imageName),
        price: Value(data.price.toDouble()),
        count: Value(data.count),
        productType: Value(data.type.id)));
  }

  Stream<List<ProductModel>> watchProductsByTypeId(int typeId) {
    return _dao.productsWatcher(typeId).map((e) {
      return e
          .map((e) => ProductModel(
              id: e.product.id,
              type: ProductTypeModel(id: e.type.id, name: e.type.name),
              name: e.product.name,
              imageName: e.product.imageName,
              count: e.product.count,
              price: e.product.price))
          .toList();
    });
  }
}
