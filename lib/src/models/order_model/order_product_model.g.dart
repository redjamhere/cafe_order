// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderProductModelImpl _$$OrderProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderProductModelImpl(
      product: ProductModel.fromJson(json['product'] as Map<String, dynamic>),
      count: (json['count'] as num).toInt(),
      totalPrice: json['totalPrice'] as num,
    );

Map<String, dynamic> _$$OrderProductModelImplToJson(
        _$OrderProductModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product,
      'count': instance.count,
      'totalPrice': instance.totalPrice,
    };
