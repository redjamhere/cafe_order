// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'co_db.dart';

// ignore_for_file: type=lint
class $CafeTablesTable extends CafeTables
    with TableInfo<$CafeTablesTable, TablesEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CafeTablesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cafe_tables';
  @override
  VerificationContext validateIntegrity(Insertable<TablesEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  TablesEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return TablesEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $CafeTablesTable createAlias(String alias) {
    return $CafeTablesTable(attachedDatabase, alias);
  }
}

class TablesEntity extends DataClass implements Insertable<TablesEntity> {
  final int id;
  final String name;
  const TablesEntity({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  CafeTablesCompanion toCompanion(bool nullToAbsent) {
    return CafeTablesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory TablesEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return TablesEntity(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  TablesEntity copyWith({int? id, String? name}) => TablesEntity(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  TablesEntity copyWithCompanion(CafeTablesCompanion data) {
    return TablesEntity(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('TablesEntity(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TablesEntity && other.id == this.id && other.name == this.name);
}

class CafeTablesCompanion extends UpdateCompanion<TablesEntity> {
  final Value<int> id;
  final Value<String> name;
  const CafeTablesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  CafeTablesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<TablesEntity> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  CafeTablesCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return CafeTablesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CafeTablesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ProductTypesTable extends ProductTypes
    with TableInfo<$ProductTypesTable, ProductTypesEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTypesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_types';
  @override
  VerificationContext validateIntegrity(Insertable<ProductTypesEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductTypesEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductTypesEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $ProductTypesTable createAlias(String alias) {
    return $ProductTypesTable(attachedDatabase, alias);
  }
}

class ProductTypesEntity extends DataClass
    implements Insertable<ProductTypesEntity> {
  final int id;
  final String name;
  const ProductTypesEntity({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  ProductTypesCompanion toCompanion(bool nullToAbsent) {
    return ProductTypesCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory ProductTypesEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductTypesEntity(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  ProductTypesEntity copyWith({int? id, String? name}) => ProductTypesEntity(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  ProductTypesEntity copyWithCompanion(ProductTypesCompanion data) {
    return ProductTypesEntity(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductTypesEntity(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductTypesEntity &&
          other.id == this.id &&
          other.name == this.name);
}

class ProductTypesCompanion extends UpdateCompanion<ProductTypesEntity> {
  final Value<int> id;
  final Value<String> name;
  const ProductTypesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  ProductTypesCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<ProductTypesEntity> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  ProductTypesCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return ProductTypesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTypesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ProductsTable extends Products
    with TableInfo<$ProductsTable, ProductsEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageNameMeta =
      const VerificationMeta('imageName');
  @override
  late final GeneratedColumn<String> imageName = GeneratedColumn<String>(
      'image_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _countMeta = const VerificationMeta('count');
  @override
  late final GeneratedColumn<int> count = GeneratedColumn<int>(
      'count', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _productTypeMeta =
      const VerificationMeta('productType');
  @override
  late final GeneratedColumn<int> productType = GeneratedColumn<int>(
      'product_type', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES product_types (id)'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, imageName, price, count, productType];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'products';
  @override
  VerificationContext validateIntegrity(Insertable<ProductsEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('image_name')) {
      context.handle(_imageNameMeta,
          imageName.isAcceptableOrUnknown(data['image_name']!, _imageNameMeta));
    } else if (isInserting) {
      context.missing(_imageNameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('count')) {
      context.handle(
          _countMeta, count.isAcceptableOrUnknown(data['count']!, _countMeta));
    } else if (isInserting) {
      context.missing(_countMeta);
    }
    if (data.containsKey('product_type')) {
      context.handle(
          _productTypeMeta,
          productType.isAcceptableOrUnknown(
              data['product_type']!, _productTypeMeta));
    } else if (isInserting) {
      context.missing(_productTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductsEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductsEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      imageName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_name'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      count: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}count'])!,
      productType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}product_type'])!,
    );
  }

  @override
  $ProductsTable createAlias(String alias) {
    return $ProductsTable(attachedDatabase, alias);
  }
}

class ProductsEntity extends DataClass implements Insertable<ProductsEntity> {
  final int id;
  final String name;
  final String imageName;
  final double price;
  final int count;
  final int productType;
  const ProductsEntity(
      {required this.id,
      required this.name,
      required this.imageName,
      required this.price,
      required this.count,
      required this.productType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['image_name'] = Variable<String>(imageName);
    map['price'] = Variable<double>(price);
    map['count'] = Variable<int>(count);
    map['product_type'] = Variable<int>(productType);
    return map;
  }

  ProductsCompanion toCompanion(bool nullToAbsent) {
    return ProductsCompanion(
      id: Value(id),
      name: Value(name),
      imageName: Value(imageName),
      price: Value(price),
      count: Value(count),
      productType: Value(productType),
    );
  }

  factory ProductsEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductsEntity(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      imageName: serializer.fromJson<String>(json['imageName']),
      price: serializer.fromJson<double>(json['price']),
      count: serializer.fromJson<int>(json['count']),
      productType: serializer.fromJson<int>(json['productType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'imageName': serializer.toJson<String>(imageName),
      'price': serializer.toJson<double>(price),
      'count': serializer.toJson<int>(count),
      'productType': serializer.toJson<int>(productType),
    };
  }

  ProductsEntity copyWith(
          {int? id,
          String? name,
          String? imageName,
          double? price,
          int? count,
          int? productType}) =>
      ProductsEntity(
        id: id ?? this.id,
        name: name ?? this.name,
        imageName: imageName ?? this.imageName,
        price: price ?? this.price,
        count: count ?? this.count,
        productType: productType ?? this.productType,
      );
  ProductsEntity copyWithCompanion(ProductsCompanion data) {
    return ProductsEntity(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      imageName: data.imageName.present ? data.imageName.value : this.imageName,
      price: data.price.present ? data.price.value : this.price,
      count: data.count.present ? data.count.value : this.count,
      productType:
          data.productType.present ? data.productType.value : this.productType,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductsEntity(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('imageName: $imageName, ')
          ..write('price: $price, ')
          ..write('count: $count, ')
          ..write('productType: $productType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, name, imageName, price, count, productType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductsEntity &&
          other.id == this.id &&
          other.name == this.name &&
          other.imageName == this.imageName &&
          other.price == this.price &&
          other.count == this.count &&
          other.productType == this.productType);
}

class ProductsCompanion extends UpdateCompanion<ProductsEntity> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> imageName;
  final Value<double> price;
  final Value<int> count;
  final Value<int> productType;
  const ProductsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.imageName = const Value.absent(),
    this.price = const Value.absent(),
    this.count = const Value.absent(),
    this.productType = const Value.absent(),
  });
  ProductsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String imageName,
    required double price,
    required int count,
    required int productType,
  })  : name = Value(name),
        imageName = Value(imageName),
        price = Value(price),
        count = Value(count),
        productType = Value(productType);
  static Insertable<ProductsEntity> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? imageName,
    Expression<double>? price,
    Expression<int>? count,
    Expression<int>? productType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (imageName != null) 'image_name': imageName,
      if (price != null) 'price': price,
      if (count != null) 'count': count,
      if (productType != null) 'product_type': productType,
    });
  }

  ProductsCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? imageName,
      Value<double>? price,
      Value<int>? count,
      Value<int>? productType}) {
    return ProductsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      imageName: imageName ?? this.imageName,
      price: price ?? this.price,
      count: count ?? this.count,
      productType: productType ?? this.productType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (imageName.present) {
      map['image_name'] = Variable<String>(imageName.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (count.present) {
      map['count'] = Variable<int>(count.value);
    }
    if (productType.present) {
      map['product_type'] = Variable<int>(productType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('imageName: $imageName, ')
          ..write('price: $price, ')
          ..write('count: $count, ')
          ..write('productType: $productType')
          ..write(')'))
        .toString();
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, OrdersEntity> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrdersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _totalPriceMeta =
      const VerificationMeta('totalPrice');
  @override
  late final GeneratedColumn<double> totalPrice = GeneratedColumn<double>(
      'total_price', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      clientDefault: () => 0);
  static const VerificationMeta _cafeTableMeta =
      const VerificationMeta('cafeTable');
  @override
  late final GeneratedColumn<int> cafeTable = GeneratedColumn<int>(
      'cafe_table', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES cafe_tables (id)'));
  static const VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  @override
  late final GeneratedColumn<DateTime> creationTime = GeneratedColumn<DateTime>(
      'creation_time', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  @override
  List<GeneratedColumn> get $columns =>
      [id, totalPrice, cafeTable, creationTime];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'orders';
  @override
  VerificationContext validateIntegrity(Insertable<OrdersEntity> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('total_price')) {
      context.handle(
          _totalPriceMeta,
          totalPrice.isAcceptableOrUnknown(
              data['total_price']!, _totalPriceMeta));
    }
    if (data.containsKey('cafe_table')) {
      context.handle(_cafeTableMeta,
          cafeTable.isAcceptableOrUnknown(data['cafe_table']!, _cafeTableMeta));
    } else if (isInserting) {
      context.missing(_cafeTableMeta);
    }
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time']!, _creationTimeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrdersEntity map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrdersEntity(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      totalPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_price'])!,
      cafeTable: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cafe_table'])!,
      creationTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}creation_time'])!,
    );
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(attachedDatabase, alias);
  }
}

class OrdersEntity extends DataClass implements Insertable<OrdersEntity> {
  final int id;
  final double totalPrice;
  final int cafeTable;
  final DateTime creationTime;
  const OrdersEntity(
      {required this.id,
      required this.totalPrice,
      required this.cafeTable,
      required this.creationTime});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['total_price'] = Variable<double>(totalPrice);
    map['cafe_table'] = Variable<int>(cafeTable);
    map['creation_time'] = Variable<DateTime>(creationTime);
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: Value(id),
      totalPrice: Value(totalPrice),
      cafeTable: Value(cafeTable),
      creationTime: Value(creationTime),
    );
  }

  factory OrdersEntity.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrdersEntity(
      id: serializer.fromJson<int>(json['id']),
      totalPrice: serializer.fromJson<double>(json['totalPrice']),
      cafeTable: serializer.fromJson<int>(json['cafeTable']),
      creationTime: serializer.fromJson<DateTime>(json['creationTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'totalPrice': serializer.toJson<double>(totalPrice),
      'cafeTable': serializer.toJson<int>(cafeTable),
      'creationTime': serializer.toJson<DateTime>(creationTime),
    };
  }

  OrdersEntity copyWith(
          {int? id,
          double? totalPrice,
          int? cafeTable,
          DateTime? creationTime}) =>
      OrdersEntity(
        id: id ?? this.id,
        totalPrice: totalPrice ?? this.totalPrice,
        cafeTable: cafeTable ?? this.cafeTable,
        creationTime: creationTime ?? this.creationTime,
      );
  OrdersEntity copyWithCompanion(OrdersCompanion data) {
    return OrdersEntity(
      id: data.id.present ? data.id.value : this.id,
      totalPrice:
          data.totalPrice.present ? data.totalPrice.value : this.totalPrice,
      cafeTable: data.cafeTable.present ? data.cafeTable.value : this.cafeTable,
      creationTime: data.creationTime.present
          ? data.creationTime.value
          : this.creationTime,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrdersEntity(')
          ..write('id: $id, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('cafeTable: $cafeTable, ')
          ..write('creationTime: $creationTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, totalPrice, cafeTable, creationTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrdersEntity &&
          other.id == this.id &&
          other.totalPrice == this.totalPrice &&
          other.cafeTable == this.cafeTable &&
          other.creationTime == this.creationTime);
}

class OrdersCompanion extends UpdateCompanion<OrdersEntity> {
  final Value<int> id;
  final Value<double> totalPrice;
  final Value<int> cafeTable;
  final Value<DateTime> creationTime;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.totalPrice = const Value.absent(),
    this.cafeTable = const Value.absent(),
    this.creationTime = const Value.absent(),
  });
  OrdersCompanion.insert({
    this.id = const Value.absent(),
    this.totalPrice = const Value.absent(),
    required int cafeTable,
    this.creationTime = const Value.absent(),
  }) : cafeTable = Value(cafeTable);
  static Insertable<OrdersEntity> custom({
    Expression<int>? id,
    Expression<double>? totalPrice,
    Expression<int>? cafeTable,
    Expression<DateTime>? creationTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (totalPrice != null) 'total_price': totalPrice,
      if (cafeTable != null) 'cafe_table': cafeTable,
      if (creationTime != null) 'creation_time': creationTime,
    });
  }

  OrdersCompanion copyWith(
      {Value<int>? id,
      Value<double>? totalPrice,
      Value<int>? cafeTable,
      Value<DateTime>? creationTime}) {
    return OrdersCompanion(
      id: id ?? this.id,
      totalPrice: totalPrice ?? this.totalPrice,
      cafeTable: cafeTable ?? this.cafeTable,
      creationTime: creationTime ?? this.creationTime,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (totalPrice.present) {
      map['total_price'] = Variable<double>(totalPrice.value);
    }
    if (cafeTable.present) {
      map['cafe_table'] = Variable<int>(cafeTable.value);
    }
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('totalPrice: $totalPrice, ')
          ..write('cafeTable: $cafeTable, ')
          ..write('creationTime: $creationTime')
          ..write(')'))
        .toString();
  }
}

abstract class _$CoDatabase extends GeneratedDatabase {
  _$CoDatabase(QueryExecutor e) : super(e);
  $CoDatabaseManager get managers => $CoDatabaseManager(this);
  late final $CafeTablesTable cafeTables = $CafeTablesTable(this);
  late final $ProductTypesTable productTypes = $ProductTypesTable(this);
  late final $ProductsTable products = $ProductsTable(this);
  late final $OrdersTable orders = $OrdersTable(this);
  late final TablesDao tablesDao = TablesDao(this as CoDatabase);
  late final ProductsDao productsDao = ProductsDao(this as CoDatabase);
  late final ProductTypesDao productTypesDao =
      ProductTypesDao(this as CoDatabase);
  late final OrdersDao ordersDao = OrdersDao(this as CoDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [cafeTables, productTypes, products, orders];
}

typedef $$CafeTablesTableCreateCompanionBuilder = CafeTablesCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$CafeTablesTableUpdateCompanionBuilder = CafeTablesCompanion Function({
  Value<int> id,
  Value<String> name,
});

final class $$CafeTablesTableReferences
    extends BaseReferences<_$CoDatabase, $CafeTablesTable, TablesEntity> {
  $$CafeTablesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$OrdersTable, List<OrdersEntity>> _ordersRefsTable(
          _$CoDatabase db) =>
      MultiTypedResultKey.fromTable(db.orders,
          aliasName:
              $_aliasNameGenerator(db.cafeTables.id, db.orders.cafeTable));

  $$OrdersTableProcessedTableManager get ordersRefs {
    final manager = $$OrdersTableTableManager($_db, $_db.orders)
        .filter((f) => f.cafeTable.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_ordersRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$CafeTablesTableFilterComposer
    extends Composer<_$CoDatabase, $CafeTablesTable> {
  $$CafeTablesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> ordersRefs(
      Expression<bool> Function($$OrdersTableFilterComposer f) f) {
    final $$OrdersTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.orders,
        getReferencedColumn: (t) => t.cafeTable,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrdersTableFilterComposer(
              $db: $db,
              $table: $db.orders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CafeTablesTableOrderingComposer
    extends Composer<_$CoDatabase, $CafeTablesTable> {
  $$CafeTablesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$CafeTablesTableAnnotationComposer
    extends Composer<_$CoDatabase, $CafeTablesTable> {
  $$CafeTablesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> ordersRefs<T extends Object>(
      Expression<T> Function($$OrdersTableAnnotationComposer a) f) {
    final $$OrdersTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.orders,
        getReferencedColumn: (t) => t.cafeTable,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$OrdersTableAnnotationComposer(
              $db: $db,
              $table: $db.orders,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$CafeTablesTableTableManager extends RootTableManager<
    _$CoDatabase,
    $CafeTablesTable,
    TablesEntity,
    $$CafeTablesTableFilterComposer,
    $$CafeTablesTableOrderingComposer,
    $$CafeTablesTableAnnotationComposer,
    $$CafeTablesTableCreateCompanionBuilder,
    $$CafeTablesTableUpdateCompanionBuilder,
    (TablesEntity, $$CafeTablesTableReferences),
    TablesEntity,
    PrefetchHooks Function({bool ordersRefs})> {
  $$CafeTablesTableTableManager(_$CoDatabase db, $CafeTablesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CafeTablesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CafeTablesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CafeTablesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              CafeTablesCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              CafeTablesCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$CafeTablesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({ordersRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (ordersRefs) db.orders],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (ordersRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$CafeTablesTableReferences._ordersRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$CafeTablesTableReferences(db, table, p0)
                                .ordersRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.cafeTable == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$CafeTablesTableProcessedTableManager = ProcessedTableManager<
    _$CoDatabase,
    $CafeTablesTable,
    TablesEntity,
    $$CafeTablesTableFilterComposer,
    $$CafeTablesTableOrderingComposer,
    $$CafeTablesTableAnnotationComposer,
    $$CafeTablesTableCreateCompanionBuilder,
    $$CafeTablesTableUpdateCompanionBuilder,
    (TablesEntity, $$CafeTablesTableReferences),
    TablesEntity,
    PrefetchHooks Function({bool ordersRefs})>;
typedef $$ProductTypesTableCreateCompanionBuilder = ProductTypesCompanion
    Function({
  Value<int> id,
  required String name,
});
typedef $$ProductTypesTableUpdateCompanionBuilder = ProductTypesCompanion
    Function({
  Value<int> id,
  Value<String> name,
});

final class $$ProductTypesTableReferences extends BaseReferences<_$CoDatabase,
    $ProductTypesTable, ProductTypesEntity> {
  $$ProductTypesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$ProductsTable, List<ProductsEntity>>
      _productsRefsTable(_$CoDatabase db) =>
          MultiTypedResultKey.fromTable(db.products,
              aliasName: $_aliasNameGenerator(
                  db.productTypes.id, db.products.productType));

  $$ProductsTableProcessedTableManager get productsRefs {
    final manager = $$ProductsTableTableManager($_db, $_db.products)
        .filter((f) => f.productType.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_productsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$ProductTypesTableFilterComposer
    extends Composer<_$CoDatabase, $ProductTypesTable> {
  $$ProductTypesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  Expression<bool> productsRefs(
      Expression<bool> Function($$ProductsTableFilterComposer f) f) {
    final $$ProductsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.products,
        getReferencedColumn: (t) => t.productType,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductsTableFilterComposer(
              $db: $db,
              $table: $db.products,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProductTypesTableOrderingComposer
    extends Composer<_$CoDatabase, $ProductTypesTable> {
  $$ProductTypesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$ProductTypesTableAnnotationComposer
    extends Composer<_$CoDatabase, $ProductTypesTable> {
  $$ProductTypesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  Expression<T> productsRefs<T extends Object>(
      Expression<T> Function($$ProductsTableAnnotationComposer a) f) {
    final $$ProductsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.products,
        getReferencedColumn: (t) => t.productType,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductsTableAnnotationComposer(
              $db: $db,
              $table: $db.products,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$ProductTypesTableTableManager extends RootTableManager<
    _$CoDatabase,
    $ProductTypesTable,
    ProductTypesEntity,
    $$ProductTypesTableFilterComposer,
    $$ProductTypesTableOrderingComposer,
    $$ProductTypesTableAnnotationComposer,
    $$ProductTypesTableCreateCompanionBuilder,
    $$ProductTypesTableUpdateCompanionBuilder,
    (ProductTypesEntity, $$ProductTypesTableReferences),
    ProductTypesEntity,
    PrefetchHooks Function({bool productsRefs})> {
  $$ProductTypesTableTableManager(_$CoDatabase db, $ProductTypesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductTypesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductTypesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductTypesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              ProductTypesCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              ProductTypesCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$ProductTypesTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({productsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (productsRefs) db.products],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (productsRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$ProductTypesTableReferences
                            ._productsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$ProductTypesTableReferences(db, table, p0)
                                .productsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.productType == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$ProductTypesTableProcessedTableManager = ProcessedTableManager<
    _$CoDatabase,
    $ProductTypesTable,
    ProductTypesEntity,
    $$ProductTypesTableFilterComposer,
    $$ProductTypesTableOrderingComposer,
    $$ProductTypesTableAnnotationComposer,
    $$ProductTypesTableCreateCompanionBuilder,
    $$ProductTypesTableUpdateCompanionBuilder,
    (ProductTypesEntity, $$ProductTypesTableReferences),
    ProductTypesEntity,
    PrefetchHooks Function({bool productsRefs})>;
typedef $$ProductsTableCreateCompanionBuilder = ProductsCompanion Function({
  Value<int> id,
  required String name,
  required String imageName,
  required double price,
  required int count,
  required int productType,
});
typedef $$ProductsTableUpdateCompanionBuilder = ProductsCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> imageName,
  Value<double> price,
  Value<int> count,
  Value<int> productType,
});

final class $$ProductsTableReferences
    extends BaseReferences<_$CoDatabase, $ProductsTable, ProductsEntity> {
  $$ProductsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $ProductTypesTable _productTypeTable(_$CoDatabase db) =>
      db.productTypes.createAlias(
          $_aliasNameGenerator(db.products.productType, db.productTypes.id));

  $$ProductTypesTableProcessedTableManager get productType {
    final manager = $$ProductTypesTableTableManager($_db, $_db.productTypes)
        .filter((f) => f.id($_item.productType!));
    final item = $_typedResult.readTableOrNull(_productTypeTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$ProductsTableFilterComposer
    extends Composer<_$CoDatabase, $ProductsTable> {
  $$ProductsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageName => $composableBuilder(
      column: $table.imageName, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get count => $composableBuilder(
      column: $table.count, builder: (column) => ColumnFilters(column));

  $$ProductTypesTableFilterComposer get productType {
    final $$ProductTypesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productType,
        referencedTable: $db.productTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductTypesTableFilterComposer(
              $db: $db,
              $table: $db.productTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductsTableOrderingComposer
    extends Composer<_$CoDatabase, $ProductsTable> {
  $$ProductsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageName => $composableBuilder(
      column: $table.imageName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get count => $composableBuilder(
      column: $table.count, builder: (column) => ColumnOrderings(column));

  $$ProductTypesTableOrderingComposer get productType {
    final $$ProductTypesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productType,
        referencedTable: $db.productTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductTypesTableOrderingComposer(
              $db: $db,
              $table: $db.productTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductsTableAnnotationComposer
    extends Composer<_$CoDatabase, $ProductsTable> {
  $$ProductsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get imageName =>
      $composableBuilder(column: $table.imageName, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get count =>
      $composableBuilder(column: $table.count, builder: (column) => column);

  $$ProductTypesTableAnnotationComposer get productType {
    final $$ProductTypesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.productType,
        referencedTable: $db.productTypes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$ProductTypesTableAnnotationComposer(
              $db: $db,
              $table: $db.productTypes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$ProductsTableTableManager extends RootTableManager<
    _$CoDatabase,
    $ProductsTable,
    ProductsEntity,
    $$ProductsTableFilterComposer,
    $$ProductsTableOrderingComposer,
    $$ProductsTableAnnotationComposer,
    $$ProductsTableCreateCompanionBuilder,
    $$ProductsTableUpdateCompanionBuilder,
    (ProductsEntity, $$ProductsTableReferences),
    ProductsEntity,
    PrefetchHooks Function({bool productType})> {
  $$ProductsTableTableManager(_$CoDatabase db, $ProductsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> imageName = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> count = const Value.absent(),
            Value<int> productType = const Value.absent(),
          }) =>
              ProductsCompanion(
            id: id,
            name: name,
            imageName: imageName,
            price: price,
            count: count,
            productType: productType,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String imageName,
            required double price,
            required int count,
            required int productType,
          }) =>
              ProductsCompanion.insert(
            id: id,
            name: name,
            imageName: imageName,
            price: price,
            count: count,
            productType: productType,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$ProductsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({productType = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (productType) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.productType,
                    referencedTable:
                        $$ProductsTableReferences._productTypeTable(db),
                    referencedColumn:
                        $$ProductsTableReferences._productTypeTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$ProductsTableProcessedTableManager = ProcessedTableManager<
    _$CoDatabase,
    $ProductsTable,
    ProductsEntity,
    $$ProductsTableFilterComposer,
    $$ProductsTableOrderingComposer,
    $$ProductsTableAnnotationComposer,
    $$ProductsTableCreateCompanionBuilder,
    $$ProductsTableUpdateCompanionBuilder,
    (ProductsEntity, $$ProductsTableReferences),
    ProductsEntity,
    PrefetchHooks Function({bool productType})>;
typedef $$OrdersTableCreateCompanionBuilder = OrdersCompanion Function({
  Value<int> id,
  Value<double> totalPrice,
  required int cafeTable,
  Value<DateTime> creationTime,
});
typedef $$OrdersTableUpdateCompanionBuilder = OrdersCompanion Function({
  Value<int> id,
  Value<double> totalPrice,
  Value<int> cafeTable,
  Value<DateTime> creationTime,
});

final class $$OrdersTableReferences
    extends BaseReferences<_$CoDatabase, $OrdersTable, OrdersEntity> {
  $$OrdersTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $CafeTablesTable _cafeTableTable(_$CoDatabase db) => db.cafeTables
      .createAlias($_aliasNameGenerator(db.orders.cafeTable, db.cafeTables.id));

  $$CafeTablesTableProcessedTableManager get cafeTable {
    final manager = $$CafeTablesTableTableManager($_db, $_db.cafeTables)
        .filter((f) => f.id($_item.cafeTable!));
    final item = $_typedResult.readTableOrNull(_cafeTableTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$OrdersTableFilterComposer extends Composer<_$CoDatabase, $OrdersTable> {
  $$OrdersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get totalPrice => $composableBuilder(
      column: $table.totalPrice, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime, builder: (column) => ColumnFilters(column));

  $$CafeTablesTableFilterComposer get cafeTable {
    final $$CafeTablesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.cafeTable,
        referencedTable: $db.cafeTables,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CafeTablesTableFilterComposer(
              $db: $db,
              $table: $db.cafeTables,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$OrdersTableOrderingComposer
    extends Composer<_$CoDatabase, $OrdersTable> {
  $$OrdersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get totalPrice => $composableBuilder(
      column: $table.totalPrice, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime,
      builder: (column) => ColumnOrderings(column));

  $$CafeTablesTableOrderingComposer get cafeTable {
    final $$CafeTablesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.cafeTable,
        referencedTable: $db.cafeTables,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CafeTablesTableOrderingComposer(
              $db: $db,
              $table: $db.cafeTables,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$OrdersTableAnnotationComposer
    extends Composer<_$CoDatabase, $OrdersTable> {
  $$OrdersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<double> get totalPrice => $composableBuilder(
      column: $table.totalPrice, builder: (column) => column);

  GeneratedColumn<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime, builder: (column) => column);

  $$CafeTablesTableAnnotationComposer get cafeTable {
    final $$CafeTablesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.cafeTable,
        referencedTable: $db.cafeTables,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$CafeTablesTableAnnotationComposer(
              $db: $db,
              $table: $db.cafeTables,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$OrdersTableTableManager extends RootTableManager<
    _$CoDatabase,
    $OrdersTable,
    OrdersEntity,
    $$OrdersTableFilterComposer,
    $$OrdersTableOrderingComposer,
    $$OrdersTableAnnotationComposer,
    $$OrdersTableCreateCompanionBuilder,
    $$OrdersTableUpdateCompanionBuilder,
    (OrdersEntity, $$OrdersTableReferences),
    OrdersEntity,
    PrefetchHooks Function({bool cafeTable})> {
  $$OrdersTableTableManager(_$CoDatabase db, $OrdersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrdersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrdersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrdersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<double> totalPrice = const Value.absent(),
            Value<int> cafeTable = const Value.absent(),
            Value<DateTime> creationTime = const Value.absent(),
          }) =>
              OrdersCompanion(
            id: id,
            totalPrice: totalPrice,
            cafeTable: cafeTable,
            creationTime: creationTime,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<double> totalPrice = const Value.absent(),
            required int cafeTable,
            Value<DateTime> creationTime = const Value.absent(),
          }) =>
              OrdersCompanion.insert(
            id: id,
            totalPrice: totalPrice,
            cafeTable: cafeTable,
            creationTime: creationTime,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$OrdersTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({cafeTable = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (cafeTable) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.cafeTable,
                    referencedTable:
                        $$OrdersTableReferences._cafeTableTable(db),
                    referencedColumn:
                        $$OrdersTableReferences._cafeTableTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$OrdersTableProcessedTableManager = ProcessedTableManager<
    _$CoDatabase,
    $OrdersTable,
    OrdersEntity,
    $$OrdersTableFilterComposer,
    $$OrdersTableOrderingComposer,
    $$OrdersTableAnnotationComposer,
    $$OrdersTableCreateCompanionBuilder,
    $$OrdersTableUpdateCompanionBuilder,
    (OrdersEntity, $$OrdersTableReferences),
    OrdersEntity,
    PrefetchHooks Function({bool cafeTable})>;

class $CoDatabaseManager {
  final _$CoDatabase _db;
  $CoDatabaseManager(this._db);
  $$CafeTablesTableTableManager get cafeTables =>
      $$CafeTablesTableTableManager(_db, _db.cafeTables);
  $$ProductTypesTableTableManager get productTypes =>
      $$ProductTypesTableTableManager(_db, _db.productTypes);
  $$ProductsTableTableManager get products =>
      $$ProductsTableTableManager(_db, _db.products);
  $$OrdersTableTableManager get orders =>
      $$OrdersTableTableManager(_db, _db.orders);
}
