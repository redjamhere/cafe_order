part of 'sales_page_bloc.dart';

@freezed
sealed class SalesPageState with _$SalesPageState {
  factory SalesPageState.initial() = Initial;
  factory SalesPageState.loading() = Loading;

  factory SalesPageState.productTypesLoaded(
      {required List<ProductTypeModel> productTypes}) = ProductTypesLoaded;
  factory SalesPageState.productTypesError({required String reason}) =
      ProductTypesError;

  factory SalesPageState.productsLoaded(
      {required List<ProductModel> products,
      required ProductTypeModel productType}) = ProductsLoaded;
  factory SalesPageState.productsError({required String reason}) =
      ProductsError;
}
