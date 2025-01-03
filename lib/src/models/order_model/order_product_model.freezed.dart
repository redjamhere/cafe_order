// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderProductModel _$OrderProductModelFromJson(Map<String, dynamic> json) {
  return _OrderProductModel.fromJson(json);
}

/// @nodoc
mixin _$OrderProductModel {
  ProductModel get product => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  num get totalPrice => throw _privateConstructorUsedError;

  /// Serializes this OrderProductModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderProductModelCopyWith<OrderProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderProductModelCopyWith<$Res> {
  factory $OrderProductModelCopyWith(
          OrderProductModel value, $Res Function(OrderProductModel) then) =
      _$OrderProductModelCopyWithImpl<$Res, OrderProductModel>;
  @useResult
  $Res call({ProductModel product, int count, num totalPrice});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderProductModelCopyWithImpl<$Res, $Val extends OrderProductModel>
    implements $OrderProductModelCopyWith<$Res> {
  _$OrderProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? count = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }

  /// Create a copy of OrderProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderProductModelImplCopyWith<$Res>
    implements $OrderProductModelCopyWith<$Res> {
  factory _$$OrderProductModelImplCopyWith(_$OrderProductModelImpl value,
          $Res Function(_$OrderProductModelImpl) then) =
      __$$OrderProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductModel product, int count, num totalPrice});

  @override
  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$OrderProductModelImplCopyWithImpl<$Res>
    extends _$OrderProductModelCopyWithImpl<$Res, _$OrderProductModelImpl>
    implements _$$OrderProductModelImplCopyWith<$Res> {
  __$$OrderProductModelImplCopyWithImpl(_$OrderProductModelImpl _value,
      $Res Function(_$OrderProductModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderProductModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? count = null,
    Object? totalPrice = null,
  }) {
    return _then(_$OrderProductModelImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderProductModelImpl implements _OrderProductModel {
  const _$OrderProductModelImpl(
      {required this.product, required this.count, required this.totalPrice});

  factory _$OrderProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderProductModelImplFromJson(json);

  @override
  final ProductModel product;
  @override
  final int count;
  @override
  final num totalPrice;

  @override
  String toString() {
    return 'OrderProductModel(product: $product, count: $count, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, product, count, totalPrice);

  /// Create a copy of OrderProductModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductModelImplCopyWith<_$OrderProductModelImpl> get copyWith =>
      __$$OrderProductModelImplCopyWithImpl<_$OrderProductModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderProductModelImplToJson(
      this,
    );
  }
}

abstract class _OrderProductModel implements OrderProductModel {
  const factory _OrderProductModel(
      {required final ProductModel product,
      required final int count,
      required final num totalPrice}) = _$OrderProductModelImpl;

  factory _OrderProductModel.fromJson(Map<String, dynamic> json) =
      _$OrderProductModelImpl.fromJson;

  @override
  ProductModel get product;
  @override
  int get count;
  @override
  num get totalPrice;

  /// Create a copy of OrderProductModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderProductModelImplCopyWith<_$OrderProductModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
