part of 'orders_page_bloc.dart';

@freezed
sealed class OrdersPageState with _$OrdersPageState {
  factory OrdersPageState.initial() = Initial;
  factory OrdersPageState.laoding() = Loading;
  factory OrdersPageState.loaded({required List<OrderModelDefault> orders}) =
      Loaded;
  factory OrdersPageState.error({required String reason}) = Error;
}
