part of 'order_creation_bloc.dart';

@freezed
sealed class OrderCreationState with _$OrderCreationState {
  const factory OrderCreationState({required OrderModel order}) =
      _OrderCreationState;
}
