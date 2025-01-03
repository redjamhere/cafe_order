import 'package:cafe_order/src/models/order_model/order_product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'order_model.freezed.dart';

@freezed
sealed class OrderModel with _$OrderModel {
  const factory OrderModel.defaultOrder({
    required int id,
    required num totalPrice,
    required TableModel table,
    @Default([]) List<OrderProductModel> products,
    required DateTime createdAt,
  }) = OrderModelDefault;

  factory OrderModel.creationOrder({
    required num totalPrice,
    required TableModel table,
    @Default([]) List<OrderProductModel> products,
  }) = OrderModelCreated;
}
