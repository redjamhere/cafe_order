// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: (json['id'] as num).toInt(),
      type: ProductTypeModel.fromJson(json['type'] as Map<String, dynamic>),
      name: json['name'] as String,
      imageName: json['imageName'] as String,
      count: (json['count'] as num).toInt(),
      price: json['price'] as num,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'imageName': instance.imageName,
      'count': instance.count,
      'price': instance.price,
    };
