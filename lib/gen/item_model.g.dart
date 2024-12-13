// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../models/item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemListModelImpl _$$ItemListModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemListModelImpl(
      itemList: (json['itemList'] as List<dynamic>)
          .map((e) => ItemListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ItemListModelImplToJson(_$ItemListModelImpl instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
    };

_$ItemModelImpl _$$ItemModelImplFromJson(Map<String, dynamic> json) =>
    _$ItemModelImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: json['price'] as String?,
      description: json['description'] as String?,
      category: json['category'] as String?,
      weights: json['weights'] == null
          ? null
          : ItemWeightsModel.fromJson(json['weights'] as Map<String, dynamic>),
      barcode: json['barcode'] == null
          ? null
          : ItemBarcodeModel.fromJson(json['barcode'] as Map<String, dynamic>),
      code: json['code'] as String?,
      rating: (json['rating'] as num?)?.toDouble() ?? 0.00,
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$$ItemModelImplToJson(_$ItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'weights': instance.weights,
      'barcode': instance.barcode,
      'code': instance.code,
      'rating': instance.rating,
      'image_url': instance.imageUrl,
    };

_$ItemWeightsModelImpl _$$ItemWeightsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemWeightsModelImpl(
      netWeight: (json['net_weight'] as num?)?.toDouble(),
      grossWeight: (json['gross_weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ItemWeightsModelImplToJson(
        _$ItemWeightsModelImpl instance) =>
    <String, dynamic>{
      'net_weight': instance.netWeight,
      'gross_weight': instance.grossWeight,
    };

_$ItemBarcodeModelImpl _$$ItemBarcodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ItemBarcodeModelImpl(
      barcodeNumber: (json['barcode_number'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ItemBarcodeModelImplToJson(
        _$ItemBarcodeModelImpl instance) =>
    <String, dynamic>{
      'barcode_number': instance.barcodeNumber,
    };
