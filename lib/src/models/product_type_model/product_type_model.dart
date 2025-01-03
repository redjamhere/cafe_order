import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_type_model.freezed.dart';
part 'product_type_model.g.dart';

@freezed
sealed class ProductTypeModel with _$ProductTypeModel {
  const factory ProductTypeModel({
    required int id,
    required String name,
  }) = _ProductTypeModel;

  factory ProductTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ProductTypeModelFromJson(json);
}
