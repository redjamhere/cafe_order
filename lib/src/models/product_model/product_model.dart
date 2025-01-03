import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
sealed class ProductModel with _$ProductModel {
  const factory ProductModel({
    required int id,
    required ProductTypeModel type,
    required String name,
    required String imageName,
    required int count,
    required num price,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
