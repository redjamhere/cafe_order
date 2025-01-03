part of 'orders_page_bloc.dart';

@freezed
sealed class OrdersPageEvent with _$OrdersPageEvent {
  const factory OrdersPageEvent.ordersRequested() = _OrdersRequested;
}
