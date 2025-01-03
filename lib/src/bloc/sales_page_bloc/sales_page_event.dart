part of 'sales_page_bloc.dart';

@freezed
sealed class SalesPageEvent with _$SalesPageEvent {
  const factory SalesPageEvent.productTypesRequested() = _ProductTypesRequested;
  const factory SalesPageEvent.productTypeChoosed(
      {required ProductTypeModel produtType}) = _ProductTypeChoosed;
}
