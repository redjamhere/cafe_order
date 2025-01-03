part of 'order_creation_bloc.dart';

@freezed
sealed class OrderCreationEvent with _$OrderCreationEvent {
  const factory OrderCreationEvent.orderCreated() = _OrderCreated;

  const factory OrderCreationEvent.productAdded(
      {required ProductModel product}) = _ProductAdded;

  const factory OrderCreationEvent.productCountChanged({
    required int orderProductIndex,
    required int value,
    required bool isPositive,
  }) = _OrderProductChanged;
}
