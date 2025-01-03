import 'package:drift/drift.dart';
import '../co_db.dart';

export 'tables_dao/tables_dao.dart';
export 'product_types_dao/product_types_dao.dart';
export 'products_dao/products_dao.dart';
export 'orders_dao/orders_dao.dart';

abstract class CoDao<EntityType extends DataClass,
        EnityCompanion extends UpdateCompanion>
    extends DatabaseAccessor<CoDatabase> {
  CoDao(super.attachedDatabase);

  Future<int> createEntity(EnityCompanion entity);

  Future<bool> updateEntity(EnityCompanion entity);

  Future<void> deleteEntity(EnityCompanion entity);

  Future<EntityType> selectEntityById(int id);

  Future<List<EntityType>> selectAllEntity();
}
