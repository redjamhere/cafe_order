import 'package:cafe_order/src/data/co_db.dart';
import 'package:cafe_order/src/repository/repository.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class CompositionRoot {
  static void setup() {
    final database = constructDb();
    final TablesDao tablesDao = TablesDao(database);
    final ProductTypesDao productTypesDao = ProductTypesDao(database);
    final ProductsDao productsDao = ProductsDao(database);
    final OrdersDao ordersDao = OrdersDao(database);

    getIt.registerLazySingleton<CoDatabase>(() => database);

    getIt.registerLazySingleton<TableRepositoryDriftImpl>(
        () => TableRepositoryDriftImpl(dao: tablesDao));
    getIt.registerLazySingleton(
        () => ProductTypeRepositoryDriftImpl(dao: productTypesDao));
    getIt.registerLazySingleton(
        () => ProductRepositoryDriftImpl(dao: productsDao));
    getIt.registerLazySingleton(() => OrderRepositoryDriftImpl(dao: ordersDao));
  }
}
