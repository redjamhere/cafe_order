// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sales_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SalesPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productTypesRequested,
    required TResult Function(ProductTypeModel produtType) productTypeChoosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? productTypesRequested,
    TResult? Function(ProductTypeModel produtType)? productTypeChoosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productTypesRequested,
    TResult Function(ProductTypeModel produtType)? productTypeChoosed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductTypesRequested value)
        productTypesRequested,
    required TResult Function(_ProductTypeChoosed value) productTypeChoosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductTypesRequested value)? productTypesRequested,
    TResult? Function(_ProductTypeChoosed value)? productTypeChoosed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductTypesRequested value)? productTypesRequested,
    TResult Function(_ProductTypeChoosed value)? productTypeChoosed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesPageEventCopyWith<$Res> {
  factory $SalesPageEventCopyWith(
          SalesPageEvent value, $Res Function(SalesPageEvent) then) =
      _$SalesPageEventCopyWithImpl<$Res, SalesPageEvent>;
}

/// @nodoc
class _$SalesPageEventCopyWithImpl<$Res, $Val extends SalesPageEvent>
    implements $SalesPageEventCopyWith<$Res> {
  _$SalesPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesPageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProductTypesRequestedImplCopyWith<$Res> {
  factory _$$ProductTypesRequestedImplCopyWith(
          _$ProductTypesRequestedImpl value,
          $Res Function(_$ProductTypesRequestedImpl) then) =
      __$$ProductTypesRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductTypesRequestedImplCopyWithImpl<$Res>
    extends _$SalesPageEventCopyWithImpl<$Res, _$ProductTypesRequestedImpl>
    implements _$$ProductTypesRequestedImplCopyWith<$Res> {
  __$$ProductTypesRequestedImplCopyWithImpl(_$ProductTypesRequestedImpl _value,
      $Res Function(_$ProductTypesRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesPageEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductTypesRequestedImpl implements _ProductTypesRequested {
  const _$ProductTypesRequestedImpl();

  @override
  String toString() {
    return 'SalesPageEvent.productTypesRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypesRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productTypesRequested,
    required TResult Function(ProductTypeModel produtType) productTypeChoosed,
  }) {
    return productTypesRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? productTypesRequested,
    TResult? Function(ProductTypeModel produtType)? productTypeChoosed,
  }) {
    return productTypesRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productTypesRequested,
    TResult Function(ProductTypeModel produtType)? productTypeChoosed,
    required TResult orElse(),
  }) {
    if (productTypesRequested != null) {
      return productTypesRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductTypesRequested value)
        productTypesRequested,
    required TResult Function(_ProductTypeChoosed value) productTypeChoosed,
  }) {
    return productTypesRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductTypesRequested value)? productTypesRequested,
    TResult? Function(_ProductTypeChoosed value)? productTypeChoosed,
  }) {
    return productTypesRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductTypesRequested value)? productTypesRequested,
    TResult Function(_ProductTypeChoosed value)? productTypeChoosed,
    required TResult orElse(),
  }) {
    if (productTypesRequested != null) {
      return productTypesRequested(this);
    }
    return orElse();
  }
}

abstract class _ProductTypesRequested implements SalesPageEvent {
  const factory _ProductTypesRequested() = _$ProductTypesRequestedImpl;
}

/// @nodoc
abstract class _$$ProductTypeChoosedImplCopyWith<$Res> {
  factory _$$ProductTypeChoosedImplCopyWith(_$ProductTypeChoosedImpl value,
          $Res Function(_$ProductTypeChoosedImpl) then) =
      __$$ProductTypeChoosedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductTypeModel produtType});

  $ProductTypeModelCopyWith<$Res> get produtType;
}

/// @nodoc
class __$$ProductTypeChoosedImplCopyWithImpl<$Res>
    extends _$SalesPageEventCopyWithImpl<$Res, _$ProductTypeChoosedImpl>
    implements _$$ProductTypeChoosedImplCopyWith<$Res> {
  __$$ProductTypeChoosedImplCopyWithImpl(_$ProductTypeChoosedImpl _value,
      $Res Function(_$ProductTypeChoosedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? produtType = null,
  }) {
    return _then(_$ProductTypeChoosedImpl(
      produtType: null == produtType
          ? _value.produtType
          : produtType // ignore: cast_nullable_to_non_nullable
              as ProductTypeModel,
    ));
  }

  /// Create a copy of SalesPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductTypeModelCopyWith<$Res> get produtType {
    return $ProductTypeModelCopyWith<$Res>(_value.produtType, (value) {
      return _then(_value.copyWith(produtType: value));
    });
  }
}

/// @nodoc

class _$ProductTypeChoosedImpl implements _ProductTypeChoosed {
  const _$ProductTypeChoosedImpl({required this.produtType});

  @override
  final ProductTypeModel produtType;

  @override
  String toString() {
    return 'SalesPageEvent.productTypeChoosed(produtType: $produtType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypeChoosedImpl &&
            (identical(other.produtType, produtType) ||
                other.produtType == produtType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, produtType);

  /// Create a copy of SalesPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypeChoosedImplCopyWith<_$ProductTypeChoosedImpl> get copyWith =>
      __$$ProductTypeChoosedImplCopyWithImpl<_$ProductTypeChoosedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productTypesRequested,
    required TResult Function(ProductTypeModel produtType) productTypeChoosed,
  }) {
    return productTypeChoosed(produtType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? productTypesRequested,
    TResult? Function(ProductTypeModel produtType)? productTypeChoosed,
  }) {
    return productTypeChoosed?.call(produtType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productTypesRequested,
    TResult Function(ProductTypeModel produtType)? productTypeChoosed,
    required TResult orElse(),
  }) {
    if (productTypeChoosed != null) {
      return productTypeChoosed(produtType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductTypesRequested value)
        productTypesRequested,
    required TResult Function(_ProductTypeChoosed value) productTypeChoosed,
  }) {
    return productTypeChoosed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductTypesRequested value)? productTypesRequested,
    TResult? Function(_ProductTypeChoosed value)? productTypeChoosed,
  }) {
    return productTypeChoosed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductTypesRequested value)? productTypesRequested,
    TResult Function(_ProductTypeChoosed value)? productTypeChoosed,
    required TResult orElse(),
  }) {
    if (productTypeChoosed != null) {
      return productTypeChoosed(this);
    }
    return orElse();
  }
}

abstract class _ProductTypeChoosed implements SalesPageEvent {
  const factory _ProductTypeChoosed(
      {required final ProductTypeModel produtType}) = _$ProductTypeChoosedImpl;

  ProductTypeModel get produtType;

  /// Create a copy of SalesPageEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductTypeChoosedImplCopyWith<_$ProductTypeChoosedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SalesPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductTypeModel> productTypes)
        productTypesLoaded,
    required TResult Function(String reason) productTypesError,
    required TResult Function(
            List<ProductModel> products, ProductTypeModel productType)
        productsLoaded,
    required TResult Function(String reason) productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult? Function(String reason)? productTypesError,
    TResult? Function(
            List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult? Function(String reason)? productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult Function(String reason)? productTypesError,
    TResult Function(List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult Function(String reason)? productsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductTypesLoaded value) productTypesLoaded,
    required TResult Function(ProductTypesError value) productTypesError,
    required TResult Function(ProductsLoaded value) productsLoaded,
    required TResult Function(ProductsError value) productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult? Function(ProductTypesError value)? productTypesError,
    TResult? Function(ProductsLoaded value)? productsLoaded,
    TResult? Function(ProductsError value)? productsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult Function(ProductTypesError value)? productTypesError,
    TResult Function(ProductsLoaded value)? productsLoaded,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesPageStateCopyWith<$Res> {
  factory $SalesPageStateCopyWith(
          SalesPageState value, $Res Function(SalesPageState) then) =
      _$SalesPageStateCopyWithImpl<$Res, SalesPageState>;
}

/// @nodoc
class _$SalesPageStateCopyWithImpl<$Res, $Val extends SalesPageState>
    implements $SalesPageStateCopyWith<$Res> {
  _$SalesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SalesPageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  _$InitialImpl();

  @override
  String toString() {
    return 'SalesPageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductTypeModel> productTypes)
        productTypesLoaded,
    required TResult Function(String reason) productTypesError,
    required TResult Function(
            List<ProductModel> products, ProductTypeModel productType)
        productsLoaded,
    required TResult Function(String reason) productsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult? Function(String reason)? productTypesError,
    TResult? Function(
            List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult? Function(String reason)? productsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult Function(String reason)? productTypesError,
    TResult Function(List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult Function(String reason)? productsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductTypesLoaded value) productTypesLoaded,
    required TResult Function(ProductTypesError value) productTypesError,
    required TResult Function(ProductsLoaded value) productsLoaded,
    required TResult Function(ProductsError value) productsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult? Function(ProductTypesError value)? productTypesError,
    TResult? Function(ProductsLoaded value)? productsLoaded,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult Function(ProductTypesError value)? productTypesError,
    TResult Function(ProductsLoaded value)? productsLoaded,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SalesPageState {
  factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$SalesPageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  _$LoadingImpl();

  @override
  String toString() {
    return 'SalesPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductTypeModel> productTypes)
        productTypesLoaded,
    required TResult Function(String reason) productTypesError,
    required TResult Function(
            List<ProductModel> products, ProductTypeModel productType)
        productsLoaded,
    required TResult Function(String reason) productsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult? Function(String reason)? productTypesError,
    TResult? Function(
            List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult? Function(String reason)? productsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult Function(String reason)? productTypesError,
    TResult Function(List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult Function(String reason)? productsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductTypesLoaded value) productTypesLoaded,
    required TResult Function(ProductTypesError value) productTypesError,
    required TResult Function(ProductsLoaded value) productsLoaded,
    required TResult Function(ProductsError value) productsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult? Function(ProductTypesError value)? productTypesError,
    TResult? Function(ProductsLoaded value)? productsLoaded,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult Function(ProductTypesError value)? productTypesError,
    TResult Function(ProductsLoaded value)? productsLoaded,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SalesPageState {
  factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$ProductTypesLoadedImplCopyWith<$Res> {
  factory _$$ProductTypesLoadedImplCopyWith(_$ProductTypesLoadedImpl value,
          $Res Function(_$ProductTypesLoadedImpl) then) =
      __$$ProductTypesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductTypeModel> productTypes});
}

/// @nodoc
class __$$ProductTypesLoadedImplCopyWithImpl<$Res>
    extends _$SalesPageStateCopyWithImpl<$Res, _$ProductTypesLoadedImpl>
    implements _$$ProductTypesLoadedImplCopyWith<$Res> {
  __$$ProductTypesLoadedImplCopyWithImpl(_$ProductTypesLoadedImpl _value,
      $Res Function(_$ProductTypesLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productTypes = null,
  }) {
    return _then(_$ProductTypesLoadedImpl(
      productTypes: null == productTypes
          ? _value._productTypes
          : productTypes // ignore: cast_nullable_to_non_nullable
              as List<ProductTypeModel>,
    ));
  }
}

/// @nodoc

class _$ProductTypesLoadedImpl implements ProductTypesLoaded {
  _$ProductTypesLoadedImpl({required final List<ProductTypeModel> productTypes})
      : _productTypes = productTypes;

  final List<ProductTypeModel> _productTypes;
  @override
  List<ProductTypeModel> get productTypes {
    if (_productTypes is EqualUnmodifiableListView) return _productTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productTypes);
  }

  @override
  String toString() {
    return 'SalesPageState.productTypesLoaded(productTypes: $productTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._productTypes, _productTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productTypes));

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypesLoadedImplCopyWith<_$ProductTypesLoadedImpl> get copyWith =>
      __$$ProductTypesLoadedImplCopyWithImpl<_$ProductTypesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductTypeModel> productTypes)
        productTypesLoaded,
    required TResult Function(String reason) productTypesError,
    required TResult Function(
            List<ProductModel> products, ProductTypeModel productType)
        productsLoaded,
    required TResult Function(String reason) productsError,
  }) {
    return productTypesLoaded(productTypes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult? Function(String reason)? productTypesError,
    TResult? Function(
            List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult? Function(String reason)? productsError,
  }) {
    return productTypesLoaded?.call(productTypes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult Function(String reason)? productTypesError,
    TResult Function(List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult Function(String reason)? productsError,
    required TResult orElse(),
  }) {
    if (productTypesLoaded != null) {
      return productTypesLoaded(productTypes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductTypesLoaded value) productTypesLoaded,
    required TResult Function(ProductTypesError value) productTypesError,
    required TResult Function(ProductsLoaded value) productsLoaded,
    required TResult Function(ProductsError value) productsError,
  }) {
    return productTypesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult? Function(ProductTypesError value)? productTypesError,
    TResult? Function(ProductsLoaded value)? productsLoaded,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return productTypesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult Function(ProductTypesError value)? productTypesError,
    TResult Function(ProductsLoaded value)? productsLoaded,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (productTypesLoaded != null) {
      return productTypesLoaded(this);
    }
    return orElse();
  }
}

abstract class ProductTypesLoaded implements SalesPageState {
  factory ProductTypesLoaded(
          {required final List<ProductTypeModel> productTypes}) =
      _$ProductTypesLoadedImpl;

  List<ProductTypeModel> get productTypes;

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductTypesLoadedImplCopyWith<_$ProductTypesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductTypesErrorImplCopyWith<$Res> {
  factory _$$ProductTypesErrorImplCopyWith(_$ProductTypesErrorImpl value,
          $Res Function(_$ProductTypesErrorImpl) then) =
      __$$ProductTypesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$ProductTypesErrorImplCopyWithImpl<$Res>
    extends _$SalesPageStateCopyWithImpl<$Res, _$ProductTypesErrorImpl>
    implements _$$ProductTypesErrorImplCopyWith<$Res> {
  __$$ProductTypesErrorImplCopyWithImpl(_$ProductTypesErrorImpl _value,
      $Res Function(_$ProductTypesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$ProductTypesErrorImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductTypesErrorImpl implements ProductTypesError {
  _$ProductTypesErrorImpl({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'SalesPageState.productTypesError(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductTypesErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductTypesErrorImplCopyWith<_$ProductTypesErrorImpl> get copyWith =>
      __$$ProductTypesErrorImplCopyWithImpl<_$ProductTypesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductTypeModel> productTypes)
        productTypesLoaded,
    required TResult Function(String reason) productTypesError,
    required TResult Function(
            List<ProductModel> products, ProductTypeModel productType)
        productsLoaded,
    required TResult Function(String reason) productsError,
  }) {
    return productTypesError(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult? Function(String reason)? productTypesError,
    TResult? Function(
            List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult? Function(String reason)? productsError,
  }) {
    return productTypesError?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult Function(String reason)? productTypesError,
    TResult Function(List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult Function(String reason)? productsError,
    required TResult orElse(),
  }) {
    if (productTypesError != null) {
      return productTypesError(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductTypesLoaded value) productTypesLoaded,
    required TResult Function(ProductTypesError value) productTypesError,
    required TResult Function(ProductsLoaded value) productsLoaded,
    required TResult Function(ProductsError value) productsError,
  }) {
    return productTypesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult? Function(ProductTypesError value)? productTypesError,
    TResult? Function(ProductsLoaded value)? productsLoaded,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return productTypesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult Function(ProductTypesError value)? productTypesError,
    TResult Function(ProductsLoaded value)? productsLoaded,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (productTypesError != null) {
      return productTypesError(this);
    }
    return orElse();
  }
}

abstract class ProductTypesError implements SalesPageState {
  factory ProductTypesError({required final String reason}) =
      _$ProductTypesErrorImpl;

  String get reason;

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductTypesErrorImplCopyWith<_$ProductTypesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsLoadedImplCopyWith<$Res> {
  factory _$$ProductsLoadedImplCopyWith(_$ProductsLoadedImpl value,
          $Res Function(_$ProductsLoadedImpl) then) =
      __$$ProductsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> products, ProductTypeModel productType});

  $ProductTypeModelCopyWith<$Res> get productType;
}

/// @nodoc
class __$$ProductsLoadedImplCopyWithImpl<$Res>
    extends _$SalesPageStateCopyWithImpl<$Res, _$ProductsLoadedImpl>
    implements _$$ProductsLoadedImplCopyWith<$Res> {
  __$$ProductsLoadedImplCopyWithImpl(
      _$ProductsLoadedImpl _value, $Res Function(_$ProductsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? productType = null,
  }) {
    return _then(_$ProductsLoadedImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      productType: null == productType
          ? _value.productType
          : productType // ignore: cast_nullable_to_non_nullable
              as ProductTypeModel,
    ));
  }

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductTypeModelCopyWith<$Res> get productType {
    return $ProductTypeModelCopyWith<$Res>(_value.productType, (value) {
      return _then(_value.copyWith(productType: value));
    });
  }
}

/// @nodoc

class _$ProductsLoadedImpl implements ProductsLoaded {
  _$ProductsLoadedImpl(
      {required final List<ProductModel> products, required this.productType})
      : _products = products;

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final ProductTypeModel productType;

  @override
  String toString() {
    return 'SalesPageState.productsLoaded(products: $products, productType: $productType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsLoadedImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.productType, productType) ||
                other.productType == productType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_products), productType);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsLoadedImplCopyWith<_$ProductsLoadedImpl> get copyWith =>
      __$$ProductsLoadedImplCopyWithImpl<_$ProductsLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductTypeModel> productTypes)
        productTypesLoaded,
    required TResult Function(String reason) productTypesError,
    required TResult Function(
            List<ProductModel> products, ProductTypeModel productType)
        productsLoaded,
    required TResult Function(String reason) productsError,
  }) {
    return productsLoaded(products, productType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult? Function(String reason)? productTypesError,
    TResult? Function(
            List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult? Function(String reason)? productsError,
  }) {
    return productsLoaded?.call(products, productType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult Function(String reason)? productTypesError,
    TResult Function(List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult Function(String reason)? productsError,
    required TResult orElse(),
  }) {
    if (productsLoaded != null) {
      return productsLoaded(products, productType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductTypesLoaded value) productTypesLoaded,
    required TResult Function(ProductTypesError value) productTypesError,
    required TResult Function(ProductsLoaded value) productsLoaded,
    required TResult Function(ProductsError value) productsError,
  }) {
    return productsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult? Function(ProductTypesError value)? productTypesError,
    TResult? Function(ProductsLoaded value)? productsLoaded,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return productsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult Function(ProductTypesError value)? productTypesError,
    TResult Function(ProductsLoaded value)? productsLoaded,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (productsLoaded != null) {
      return productsLoaded(this);
    }
    return orElse();
  }
}

abstract class ProductsLoaded implements SalesPageState {
  factory ProductsLoaded(
      {required final List<ProductModel> products,
      required final ProductTypeModel productType}) = _$ProductsLoadedImpl;

  List<ProductModel> get products;
  ProductTypeModel get productType;

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsLoadedImplCopyWith<_$ProductsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsErrorImplCopyWith<$Res> {
  factory _$$ProductsErrorImplCopyWith(
          _$ProductsErrorImpl value, $Res Function(_$ProductsErrorImpl) then) =
      __$$ProductsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$ProductsErrorImplCopyWithImpl<$Res>
    extends _$SalesPageStateCopyWithImpl<$Res, _$ProductsErrorImpl>
    implements _$$ProductsErrorImplCopyWith<$Res> {
  __$$ProductsErrorImplCopyWithImpl(
      _$ProductsErrorImpl _value, $Res Function(_$ProductsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$ProductsErrorImpl(
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsErrorImpl implements ProductsError {
  _$ProductsErrorImpl({required this.reason});

  @override
  final String reason;

  @override
  String toString() {
    return 'SalesPageState.productsError(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsErrorImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsErrorImplCopyWith<_$ProductsErrorImpl> get copyWith =>
      __$$ProductsErrorImplCopyWithImpl<_$ProductsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ProductTypeModel> productTypes)
        productTypesLoaded,
    required TResult Function(String reason) productTypesError,
    required TResult Function(
            List<ProductModel> products, ProductTypeModel productType)
        productsLoaded,
    required TResult Function(String reason) productsError,
  }) {
    return productsError(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult? Function(String reason)? productTypesError,
    TResult? Function(
            List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult? Function(String reason)? productsError,
  }) {
    return productsError?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ProductTypeModel> productTypes)? productTypesLoaded,
    TResult Function(String reason)? productTypesError,
    TResult Function(List<ProductModel> products, ProductTypeModel productType)?
        productsLoaded,
    TResult Function(String reason)? productsError,
    required TResult orElse(),
  }) {
    if (productsError != null) {
      return productsError(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(ProductTypesLoaded value) productTypesLoaded,
    required TResult Function(ProductTypesError value) productTypesError,
    required TResult Function(ProductsLoaded value) productsLoaded,
    required TResult Function(ProductsError value) productsError,
  }) {
    return productsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult? Function(ProductTypesError value)? productTypesError,
    TResult? Function(ProductsLoaded value)? productsLoaded,
    TResult? Function(ProductsError value)? productsError,
  }) {
    return productsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(ProductTypesLoaded value)? productTypesLoaded,
    TResult Function(ProductTypesError value)? productTypesError,
    TResult Function(ProductsLoaded value)? productsLoaded,
    TResult Function(ProductsError value)? productsError,
    required TResult orElse(),
  }) {
    if (productsError != null) {
      return productsError(this);
    }
    return orElse();
  }
}

abstract class ProductsError implements SalesPageState {
  factory ProductsError({required final String reason}) = _$ProductsErrorImpl;

  String get reason;

  /// Create a copy of SalesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsErrorImplCopyWith<_$ProductsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
