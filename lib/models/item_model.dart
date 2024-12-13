import 'package:freezed_annotation/freezed_annotation.dart';
part '../gen/item_model.freezed.dart';
part '../gen/item_model.g.dart';

@freezed
class ItemListModel with _$ItemListModel {
  const factory ItemListModel({
    required List<ItemListModel> itemList,
  }) = _ItemListModel;

  factory ItemListModel.fromJson(Map<String, dynamic> json) => _$ItemListModelFromJson(json);
}

@freezed
class ItemModel with _$ItemModel {
  const factory ItemModel({
    int? id,
    String? name,
    String? price,
    String? description,
    String? category,
    @JsonKey(name: "weights") ItemWeightsModel? weights,
    @JsonKey(name: "barcode") ItemBarcodeModel? barcode,
    String? code,
    @Default(0.00) double rating,
    @JsonKey(name: "image_url") String? imageUrl,
  }) = _ItemModel;

  factory ItemModel.fromJson(Map<String, dynamic> json) => _$ItemModelFromJson(json);
}

@freezed
class ItemWeightsModel with _$ItemWeightsModel {
  const factory ItemWeightsModel({
    @JsonKey(name: "net_weight") double? netWeight,
    @JsonKey(name: "gross_weight") double? grossWeight,
  }) = _ItemWeightsModel;

  factory ItemWeightsModel.fromJson(Map<String, dynamic> json) => _$ItemWeightsModelFromJson(json);
}

@freezed
class ItemBarcodeModel with _$ItemBarcodeModel {
  const factory ItemBarcodeModel({
    @JsonKey(name: "barcode_number") double? barcodeNumber,
  }) = _ItemBarcodeModel;

  factory ItemBarcodeModel.fromJson(Map<String, dynamic> json) => _$ItemBarcodeModelFromJson(json);
}
