// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_creation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderCreationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderCreated,
    required TResult Function(ProductModel product) productAdded,
    required TResult Function(int orderProductIndex, int value, bool isPositive)
        productCountChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orderCreated,
    TResult? Function(ProductModel product)? productAdded,
    TResult? Function(int orderProductIndex, int value, bool isPositive)?
        productCountChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderCreated,
    TResult Function(ProductModel product)? productAdded,
    TResult Function(int orderProductIndex, int value, bool isPositive)?
        productCountChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderCreated value) orderCreated,
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_OrderProductChanged value) productCountChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderCreated value)? orderCreated,
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_OrderProductChanged value)? productCountChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderCreated value)? orderCreated,
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_OrderProductChanged value)? productCountChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreationEventCopyWith<$Res> {
  factory $OrderCreationEventCopyWith(
          OrderCreationEvent value, $Res Function(OrderCreationEvent) then) =
      _$OrderCreationEventCopyWithImpl<$Res, OrderCreationEvent>;
}

/// @nodoc
class _$OrderCreationEventCopyWithImpl<$Res, $Val extends OrderCreationEvent>
    implements $OrderCreationEventCopyWith<$Res> {
  _$OrderCreationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OrderCreatedImplCopyWith<$Res> {
  factory _$$OrderCreatedImplCopyWith(
          _$OrderCreatedImpl value, $Res Function(_$OrderCreatedImpl) then) =
      __$$OrderCreatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OrderCreatedImplCopyWithImpl<$Res>
    extends _$OrderCreationEventCopyWithImpl<$Res, _$OrderCreatedImpl>
    implements _$$OrderCreatedImplCopyWith<$Res> {
  __$$OrderCreatedImplCopyWithImpl(
      _$OrderCreatedImpl _value, $Res Function(_$OrderCreatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OrderCreatedImpl implements _OrderCreated {
  const _$OrderCreatedImpl();

  @override
  String toString() {
    return 'OrderCreationEvent.orderCreated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OrderCreatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderCreated,
    required TResult Function(ProductModel product) productAdded,
    required TResult Function(int orderProductIndex, int value, bool isPositive)
        productCountChanged,
  }) {
    return orderCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orderCreated,
    TResult? Function(ProductModel product)? productAdded,
    TResult? Function(int orderProductIndex, int value, bool isPositive)?
        productCountChanged,
  }) {
    return orderCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderCreated,
    TResult Function(ProductModel product)? productAdded,
    TResult Function(int orderProductIndex, int value, bool isPositive)?
        productCountChanged,
    required TResult orElse(),
  }) {
    if (orderCreated != null) {
      return orderCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderCreated value) orderCreated,
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_OrderProductChanged value) productCountChanged,
  }) {
    return orderCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderCreated value)? orderCreated,
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_OrderProductChanged value)? productCountChanged,
  }) {
    return orderCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderCreated value)? orderCreated,
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_OrderProductChanged value)? productCountChanged,
    required TResult orElse(),
  }) {
    if (orderCreated != null) {
      return orderCreated(this);
    }
    return orElse();
  }
}

abstract class _OrderCreated implements OrderCreationEvent {
  const factory _OrderCreated() = _$OrderCreatedImpl;
}

/// @nodoc
abstract class _$$ProductAddedImplCopyWith<$Res> {
  factory _$$ProductAddedImplCopyWith(
          _$ProductAddedImpl value, $Res Function(_$ProductAddedImpl) then) =
      __$$ProductAddedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductModel product});

  $ProductModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$ProductAddedImplCopyWithImpl<$Res>
    extends _$OrderCreationEventCopyWithImpl<$Res, _$ProductAddedImpl>
    implements _$$ProductAddedImplCopyWith<$Res> {
  __$$ProductAddedImplCopyWithImpl(
      _$ProductAddedImpl _value, $Res Function(_$ProductAddedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductAddedImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel,
    ));
  }

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res> get product {
    return $ProductModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ProductAddedImpl implements _ProductAdded {
  const _$ProductAddedImpl({required this.product});

  @override
  final ProductModel product;

  @override
  String toString() {
    return 'OrderCreationEvent.productAdded(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAddedImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAddedImplCopyWith<_$ProductAddedImpl> get copyWith =>
      __$$ProductAddedImplCopyWithImpl<_$ProductAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderCreated,
    required TResult Function(ProductModel product) productAdded,
    required TResult Function(int orderProductIndex, int value, bool isPositive)
        productCountChanged,
  }) {
    return productAdded(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orderCreated,
    TResult? Function(ProductModel product)? productAdded,
    TResult? Function(int orderProductIndex, int value, bool isPositive)?
        productCountChanged,
  }) {
    return productAdded?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderCreated,
    TResult Function(ProductModel product)? productAdded,
    TResult Function(int orderProductIndex, int value, bool isPositive)?
        productCountChanged,
    required TResult orElse(),
  }) {
    if (productAdded != null) {
      return productAdded(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderCreated value) orderCreated,
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_OrderProductChanged value) productCountChanged,
  }) {
    return productAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderCreated value)? orderCreated,
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_OrderProductChanged value)? productCountChanged,
  }) {
    return productAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderCreated value)? orderCreated,
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_OrderProductChanged value)? productCountChanged,
    required TResult orElse(),
  }) {
    if (productAdded != null) {
      return productAdded(this);
    }
    return orElse();
  }
}

abstract class _ProductAdded implements OrderCreationEvent {
  const factory _ProductAdded({required final ProductModel product}) =
      _$ProductAddedImpl;

  ProductModel get product;

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductAddedImplCopyWith<_$ProductAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrderProductChangedImplCopyWith<$Res> {
  factory _$$OrderProductChangedImplCopyWith(_$OrderProductChangedImpl value,
          $Res Function(_$OrderProductChangedImpl) then) =
      __$$OrderProductChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderProductIndex, int value, bool isPositive});
}

/// @nodoc
class __$$OrderProductChangedImplCopyWithImpl<$Res>
    extends _$OrderCreationEventCopyWithImpl<$Res, _$OrderProductChangedImpl>
    implements _$$OrderProductChangedImplCopyWith<$Res> {
  __$$OrderProductChangedImplCopyWithImpl(_$OrderProductChangedImpl _value,
      $Res Function(_$OrderProductChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderProductIndex = null,
    Object? value = null,
    Object? isPositive = null,
  }) {
    return _then(_$OrderProductChangedImpl(
      orderProductIndex: null == orderProductIndex
          ? _value.orderProductIndex
          : orderProductIndex // ignore: cast_nullable_to_non_nullable
              as int,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      isPositive: null == isPositive
          ? _value.isPositive
          : isPositive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OrderProductChangedImpl implements _OrderProductChanged {
  const _$OrderProductChangedImpl(
      {required this.orderProductIndex,
      required this.value,
      required this.isPositive});

  @override
  final int orderProductIndex;
  @override
  final int value;
  @override
  final bool isPositive;

  @override
  String toString() {
    return 'OrderCreationEvent.productCountChanged(orderProductIndex: $orderProductIndex, value: $value, isPositive: $isPositive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderProductChangedImpl &&
            (identical(other.orderProductIndex, orderProductIndex) ||
                other.orderProductIndex == orderProductIndex) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.isPositive, isPositive) ||
                other.isPositive == isPositive));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderProductIndex, value, isPositive);

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderProductChangedImplCopyWith<_$OrderProductChangedImpl> get copyWith =>
      __$$OrderProductChangedImplCopyWithImpl<_$OrderProductChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() orderCreated,
    required TResult Function(ProductModel product) productAdded,
    required TResult Function(int orderProductIndex, int value, bool isPositive)
        productCountChanged,
  }) {
    return productCountChanged(orderProductIndex, value, isPositive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? orderCreated,
    TResult? Function(ProductModel product)? productAdded,
    TResult? Function(int orderProductIndex, int value, bool isPositive)?
        productCountChanged,
  }) {
    return productCountChanged?.call(orderProductIndex, value, isPositive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? orderCreated,
    TResult Function(ProductModel product)? productAdded,
    TResult Function(int orderProductIndex, int value, bool isPositive)?
        productCountChanged,
    required TResult orElse(),
  }) {
    if (productCountChanged != null) {
      return productCountChanged(orderProductIndex, value, isPositive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OrderCreated value) orderCreated,
    required TResult Function(_ProductAdded value) productAdded,
    required TResult Function(_OrderProductChanged value) productCountChanged,
  }) {
    return productCountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OrderCreated value)? orderCreated,
    TResult? Function(_ProductAdded value)? productAdded,
    TResult? Function(_OrderProductChanged value)? productCountChanged,
  }) {
    return productCountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OrderCreated value)? orderCreated,
    TResult Function(_ProductAdded value)? productAdded,
    TResult Function(_OrderProductChanged value)? productCountChanged,
    required TResult orElse(),
  }) {
    if (productCountChanged != null) {
      return productCountChanged(this);
    }
    return orElse();
  }
}

abstract class _OrderProductChanged implements OrderCreationEvent {
  const factory _OrderProductChanged(
      {required final int orderProductIndex,
      required final int value,
      required final bool isPositive}) = _$OrderProductChangedImpl;

  int get orderProductIndex;
  int get value;
  bool get isPositive;

  /// Create a copy of OrderCreationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderProductChangedImplCopyWith<_$OrderProductChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderCreationState {
  OrderModel get order => throw _privateConstructorUsedError;

  /// Create a copy of OrderCreationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderCreationStateCopyWith<OrderCreationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCreationStateCopyWith<$Res> {
  factory $OrderCreationStateCopyWith(
          OrderCreationState value, $Res Function(OrderCreationState) then) =
      _$OrderCreationStateCopyWithImpl<$Res, OrderCreationState>;
  @useResult
  $Res call({OrderModel order});

  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class _$OrderCreationStateCopyWithImpl<$Res, $Val extends OrderCreationState>
    implements $OrderCreationStateCopyWith<$Res> {
  _$OrderCreationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderCreationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_value.copyWith(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ) as $Val);
  }

  /// Create a copy of OrderCreationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderModelCopyWith<$Res> get order {
    return $OrderModelCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderCreationStateImplCopyWith<$Res>
    implements $OrderCreationStateCopyWith<$Res> {
  factory _$$OrderCreationStateImplCopyWith(_$OrderCreationStateImpl value,
          $Res Function(_$OrderCreationStateImpl) then) =
      __$$OrderCreationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OrderModel order});

  @override
  $OrderModelCopyWith<$Res> get order;
}

/// @nodoc
class __$$OrderCreationStateImplCopyWithImpl<$Res>
    extends _$OrderCreationStateCopyWithImpl<$Res, _$OrderCreationStateImpl>
    implements _$$OrderCreationStateImplCopyWith<$Res> {
  __$$OrderCreationStateImplCopyWithImpl(_$OrderCreationStateImpl _value,
      $Res Function(_$OrderCreationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderCreationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
  }) {
    return _then(_$OrderCreationStateImpl(
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as OrderModel,
    ));
  }
}

/// @nodoc

class _$OrderCreationStateImpl implements _OrderCreationState {
  const _$OrderCreationStateImpl({required this.order});

  @override
  final OrderModel order;

  @override
  String toString() {
    return 'OrderCreationState(order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderCreationStateImpl &&
            (identical(other.order, order) || other.order == order));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order);

  /// Create a copy of OrderCreationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderCreationStateImplCopyWith<_$OrderCreationStateImpl> get copyWith =>
      __$$OrderCreationStateImplCopyWithImpl<_$OrderCreationStateImpl>(
          this, _$identity);
}

abstract class _OrderCreationState implements OrderCreationState {
  const factory _OrderCreationState({required final OrderModel order}) =
      _$OrderCreationStateImpl;

  @override
  OrderModel get order;

  /// Create a copy of OrderCreationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderCreationStateImplCopyWith<_$OrderCreationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
