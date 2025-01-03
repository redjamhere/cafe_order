// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderModel {
  num get totalPrice => throw _privateConstructorUsedError;
  TableModel get table => throw _privateConstructorUsedError;
  List<OrderProductModel> get products => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)
        defaultOrder,
    required TResult Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)
        creationOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)?
        defaultOrder,
    TResult? Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)?
        creationOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)?
        defaultOrder,
    TResult Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)?
        creationOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderModelDefault value) defaultOrder,
    required TResult Function(OrderModelCreated value) creationOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderModelDefault value)? defaultOrder,
    TResult? Function(OrderModelCreated value)? creationOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderModelDefault value)? defaultOrder,
    TResult Function(OrderModelCreated value)? creationOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderModelCopyWith<OrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderModelCopyWith<$Res> {
  factory $OrderModelCopyWith(
          OrderModel value, $Res Function(OrderModel) then) =
      _$OrderModelCopyWithImpl<$Res, OrderModel>;
  @useResult
  $Res call(
      {num totalPrice, TableModel table, List<OrderProductModel> products});

  $TableModelCopyWith<$Res> get table;
}

/// @nodoc
class _$OrderModelCopyWithImpl<$Res, $Val extends OrderModel>
    implements $OrderModelCopyWith<$Res> {
  _$OrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = null,
    Object? table = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as TableModel,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderProductModel>,
    ) as $Val);
  }

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TableModelCopyWith<$Res> get table {
    return $TableModelCopyWith<$Res>(_value.table, (value) {
      return _then(_value.copyWith(table: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderModelDefaultImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelDefaultImplCopyWith(_$OrderModelDefaultImpl value,
          $Res Function(_$OrderModelDefaultImpl) then) =
      __$$OrderModelDefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      num totalPrice,
      TableModel table,
      List<OrderProductModel> products,
      DateTime createdAt});

  @override
  $TableModelCopyWith<$Res> get table;
}

/// @nodoc
class __$$OrderModelDefaultImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelDefaultImpl>
    implements _$$OrderModelDefaultImplCopyWith<$Res> {
  __$$OrderModelDefaultImplCopyWithImpl(_$OrderModelDefaultImpl _value,
      $Res Function(_$OrderModelDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? totalPrice = null,
    Object? table = null,
    Object? products = null,
    Object? createdAt = null,
  }) {
    return _then(_$OrderModelDefaultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as TableModel,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderProductModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$OrderModelDefaultImpl implements OrderModelDefault {
  const _$OrderModelDefaultImpl(
      {required this.id,
      required this.totalPrice,
      required this.table,
      final List<OrderProductModel> products = const [],
      required this.createdAt})
      : _products = products;

  @override
  final int id;
  @override
  final num totalPrice;
  @override
  final TableModel table;
  final List<OrderProductModel> _products;
  @override
  @JsonKey()
  List<OrderProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'OrderModel.defaultOrder(id: $id, totalPrice: $totalPrice, table: $table, products: $products, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelDefaultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.table, table) || other.table == table) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, totalPrice, table,
      const DeepCollectionEquality().hash(_products), createdAt);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelDefaultImplCopyWith<_$OrderModelDefaultImpl> get copyWith =>
      __$$OrderModelDefaultImplCopyWithImpl<_$OrderModelDefaultImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)
        defaultOrder,
    required TResult Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)
        creationOrder,
  }) {
    return defaultOrder(id, totalPrice, table, products, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)?
        defaultOrder,
    TResult? Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)?
        creationOrder,
  }) {
    return defaultOrder?.call(id, totalPrice, table, products, createdAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)?
        defaultOrder,
    TResult Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)?
        creationOrder,
    required TResult orElse(),
  }) {
    if (defaultOrder != null) {
      return defaultOrder(id, totalPrice, table, products, createdAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderModelDefault value) defaultOrder,
    required TResult Function(OrderModelCreated value) creationOrder,
  }) {
    return defaultOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderModelDefault value)? defaultOrder,
    TResult? Function(OrderModelCreated value)? creationOrder,
  }) {
    return defaultOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderModelDefault value)? defaultOrder,
    TResult Function(OrderModelCreated value)? creationOrder,
    required TResult orElse(),
  }) {
    if (defaultOrder != null) {
      return defaultOrder(this);
    }
    return orElse();
  }
}

abstract class OrderModelDefault implements OrderModel {
  const factory OrderModelDefault(
      {required final int id,
      required final num totalPrice,
      required final TableModel table,
      final List<OrderProductModel> products,
      required final DateTime createdAt}) = _$OrderModelDefaultImpl;

  int get id;
  @override
  num get totalPrice;
  @override
  TableModel get table;
  @override
  List<OrderProductModel> get products;
  DateTime get createdAt;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelDefaultImplCopyWith<_$OrderModelDefaultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderModelCreatedImplCopyWith<$Res>
    implements $OrderModelCopyWith<$Res> {
  factory _$$OrderModelCreatedImplCopyWith(_$OrderModelCreatedImpl value,
          $Res Function(_$OrderModelCreatedImpl) then) =
      __$$OrderModelCreatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {num totalPrice, TableModel table, List<OrderProductModel> products});

  @override
  $TableModelCopyWith<$Res> get table;
}

/// @nodoc
class __$$OrderModelCreatedImplCopyWithImpl<$Res>
    extends _$OrderModelCopyWithImpl<$Res, _$OrderModelCreatedImpl>
    implements _$$OrderModelCreatedImplCopyWith<$Res> {
  __$$OrderModelCreatedImplCopyWithImpl(_$OrderModelCreatedImpl _value,
      $Res Function(_$OrderModelCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPrice = null,
    Object? table = null,
    Object? products = null,
  }) {
    return _then(_$OrderModelCreatedImpl(
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
      table: null == table
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as TableModel,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<OrderProductModel>,
    ));
  }
}

/// @nodoc

class _$OrderModelCreatedImpl implements OrderModelCreated {
  _$OrderModelCreatedImpl(
      {required this.totalPrice,
      required this.table,
      final List<OrderProductModel> products = const []})
      : _products = products;

  @override
  final num totalPrice;
  @override
  final TableModel table;
  final List<OrderProductModel> _products;
  @override
  @JsonKey()
  List<OrderProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'OrderModel.creationOrder(totalPrice: $totalPrice, table: $table, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderModelCreatedImpl &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.table, table) || other.table == table) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalPrice, table,
      const DeepCollectionEquality().hash(_products));

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderModelCreatedImplCopyWith<_$OrderModelCreatedImpl> get copyWith =>
      __$$OrderModelCreatedImplCopyWithImpl<_$OrderModelCreatedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)
        defaultOrder,
    required TResult Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)
        creationOrder,
  }) {
    return creationOrder(totalPrice, table, products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)?
        defaultOrder,
    TResult? Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)?
        creationOrder,
  }) {
    return creationOrder?.call(totalPrice, table, products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id, num totalPrice, TableModel table,
            List<OrderProductModel> products, DateTime createdAt)?
        defaultOrder,
    TResult Function(
            num totalPrice, TableModel table, List<OrderProductModel> products)?
        creationOrder,
    required TResult orElse(),
  }) {
    if (creationOrder != null) {
      return creationOrder(totalPrice, table, products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OrderModelDefault value) defaultOrder,
    required TResult Function(OrderModelCreated value) creationOrder,
  }) {
    return creationOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OrderModelDefault value)? defaultOrder,
    TResult? Function(OrderModelCreated value)? creationOrder,
  }) {
    return creationOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OrderModelDefault value)? defaultOrder,
    TResult Function(OrderModelCreated value)? creationOrder,
    required TResult orElse(),
  }) {
    if (creationOrder != null) {
      return creationOrder(this);
    }
    return orElse();
  }
}

abstract class OrderModelCreated implements OrderModel {
  factory OrderModelCreated(
      {required final num totalPrice,
      required final TableModel table,
      final List<OrderProductModel> products}) = _$OrderModelCreatedImpl;

  @override
  num get totalPrice;
  @override
  TableModel get table;
  @override
  List<OrderProductModel> get products;

  /// Create a copy of OrderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderModelCreatedImplCopyWith<_$OrderModelCreatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
