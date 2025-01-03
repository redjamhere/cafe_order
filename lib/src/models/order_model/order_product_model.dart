import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'order_product_model.freezed.dart';
part 'order_product_model.g.dart';

@freezed
sealed class OrderProductModel with _$OrderProductModel {
  const factory OrderProductModel({
    required ProductModel product,
    required int count,
    required num totalPrice,
  }) = _OrderProductModel;

  factory OrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$OrderProductModelFromJson(json);
}
