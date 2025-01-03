import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';

import './tables/tables.dart';
import 'dao/daos.dart';

export 'tables/tables.dart';
export 'dao/daos.dart';

part 'co_db.g.dart';

@DriftDatabase(
    tables: [CafeTables, ProductTypes, Products, Orders],
    daos: [TablesDao, ProductsDao, ProductTypesDao, OrdersDao])
base class CoDatabase extends _$CoDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  CoDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    // `driftDatabase` from `package:drift_flutter` stores the database in
    // `getApplicationDocumentsDirectory()`.
    return driftDatabase(name: 'co_database');
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) async {
        await m.createAll();
        // initial cafe tables
        await into(cafeTables)
            .insert(CafeTablesCompanion.insert(name: 'Основной зал'));
        await into(cafeTables)
            .insert(CafeTablesCompanion.insert(name: 'Летка'));
        await into(cafeTables)
            .insert(CafeTablesCompanion.insert(name: 'VIP 1'));
        await into(cafeTables)
            .insert(CafeTablesCompanion.insert(name: 'VIP 2'));

        // initial food types
        await into(productTypes)
            .insert(ProductTypesCompanion.insert(name: 'Напитки'));
        await into(productTypes)
            .insert(ProductTypesCompanion.insert(name: 'Первые блюда'));
        await into(productTypes)
            .insert(ProductTypesCompanion.insert(name: 'Вторые блюда'));
        await into(productTypes)
            .insert(ProductTypesCompanion.insert(name: 'Десерты'));

        // initial foods

        // Первые блюда
        await into(products).insert(ProductsCompanion.insert(
            name: 'Борщ с говядиной',
            productType: 2,
            imageName: 'borsh.png',
            price: 100,
            count: 10));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Суп-пюре из тыквы',
            productType: 2,
            imageName: 'tikva.png',
            price: 120,
            count: 8));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Щи из свежей капусты',
            productType: 2,
            imageName: 'shi.png',
            price: 90,
            count: 15));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Солянка мясная',
            productType: 2,
            imageName: 'solanka.png',
            price: 150,
            count: 7));

        // Вторые блюда
        await into(products).insert(ProductsCompanion.insert(
            name: 'Курица гриль с картофелем',
            productType: 3,
            imageName: 'chicken.png',
            price: 200,
            count: 5));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Стейк из говядины с овощами гриль',
            productType: 3,
            imageName: 'stake.png',
            price: 350,
            count: 3));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Котлеты из индейки с пюре',
            productType: 3,
            imageName: 'kotleti.png',
            price: 180,
            count: 6));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Лазанья с соусом болоньезе',
            productType: 3,
            imageName: 'lazania.png',
            price: 220,
            count: 4));

        // Напитки
        await into(products).insert(ProductsCompanion.insert(
            name: 'Чай с лимоном',
            productType: 1,
            imageName: 'tea.png',
            price: 50,
            count: 20));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Кофе латте',
            productType: 1,
            imageName: 'latte.png',
            price: 120,
            count: 15));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Домашний лимонад с мятой',
            productType: 1,
            imageName: 'lemonade.png',
            price: 100,
            count: 12));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Апельсиновый сок',
            productType: 1,
            imageName: 'juce.png',
            price: 90,
            count: 10));

        // Десерты
        await into(products).insert(ProductsCompanion.insert(
            name: 'Тирамису',
            productType: 4,
            imageName: 'tiramisu.png',
            price: 150,
            count: 5));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Чизкейк классический',
            productType: 4,
            imageName: 'cake.png',
            price: 160,
            count: 6));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Шоколадный фондан',
            productType: 4,
            imageName: 'fondan.png',
            price: 170,
            count: 4));
        await into(products).insert(ProductsCompanion.insert(
            name: 'Яблочный штрудель',
            productType: 4,
            imageName: 'shtrudel.png',
            price: 140,
            count: 7));
      },
      onUpgrade: (Migrator m, int from, int to) async {
        //  if (from < 2) {}
      },
      beforeOpen: (details) async {
        if (kDebugMode) {
          // await validateDatabaseSchema();
        }
      },
    );
  }
}

CoDatabase constructDb() => CoDatabase();
