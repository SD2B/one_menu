// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../models/item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemListModel _$ItemListModelFromJson(Map<String, dynamic> json) {
  return _ItemListModel.fromJson(json);
}

/// @nodoc
mixin _$ItemListModel {
  List<ItemListModel> get itemList => throw _privateConstructorUsedError;

  /// Serializes this ItemListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemListModelCopyWith<ItemListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemListModelCopyWith<$Res> {
  factory $ItemListModelCopyWith(
          ItemListModel value, $Res Function(ItemListModel) then) =
      _$ItemListModelCopyWithImpl<$Res, ItemListModel>;
  @useResult
  $Res call({List<ItemListModel> itemList});
}

/// @nodoc
class _$ItemListModelCopyWithImpl<$Res, $Val extends ItemListModel>
    implements $ItemListModelCopyWith<$Res> {
  _$ItemListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = null,
  }) {
    return _then(_value.copyWith(
      itemList: null == itemList
          ? _value.itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<ItemListModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemListModelImplCopyWith<$Res>
    implements $ItemListModelCopyWith<$Res> {
  factory _$$ItemListModelImplCopyWith(
          _$ItemListModelImpl value, $Res Function(_$ItemListModelImpl) then) =
      __$$ItemListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ItemListModel> itemList});
}

/// @nodoc
class __$$ItemListModelImplCopyWithImpl<$Res>
    extends _$ItemListModelCopyWithImpl<$Res, _$ItemListModelImpl>
    implements _$$ItemListModelImplCopyWith<$Res> {
  __$$ItemListModelImplCopyWithImpl(
      _$ItemListModelImpl _value, $Res Function(_$ItemListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemList = null,
  }) {
    return _then(_$ItemListModelImpl(
      itemList: null == itemList
          ? _value._itemList
          : itemList // ignore: cast_nullable_to_non_nullable
              as List<ItemListModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemListModelImpl implements _ItemListModel {
  const _$ItemListModelImpl({required final List<ItemListModel> itemList})
      : _itemList = itemList;

  factory _$ItemListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemListModelImplFromJson(json);

  final List<ItemListModel> _itemList;
  @override
  List<ItemListModel> get itemList {
    if (_itemList is EqualUnmodifiableListView) return _itemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_itemList);
  }

  @override
  String toString() {
    return 'ItemListModel(itemList: $itemList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemListModelImpl &&
            const DeepCollectionEquality().equals(other._itemList, _itemList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itemList));

  /// Create a copy of ItemListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemListModelImplCopyWith<_$ItemListModelImpl> get copyWith =>
      __$$ItemListModelImplCopyWithImpl<_$ItemListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemListModelImplToJson(
      this,
    );
  }
}

abstract class _ItemListModel implements ItemListModel {
  const factory _ItemListModel({required final List<ItemListModel> itemList}) =
      _$ItemListModelImpl;

  factory _ItemListModel.fromJson(Map<String, dynamic> json) =
      _$ItemListModelImpl.fromJson;

  @override
  List<ItemListModel> get itemList;

  /// Create a copy of ItemListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemListModelImplCopyWith<_$ItemListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemModel _$ItemModelFromJson(Map<String, dynamic> json) {
  return _ItemModel.fromJson(json);
}

/// @nodoc
mixin _$ItemModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: "weights")
  ItemWeightsModel? get weights => throw _privateConstructorUsedError;
  @JsonKey(name: "barcode")
  ItemBarcodeModel? get barcode => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: "image_url")
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "whole_sale_stock")
  int? get wholesaleStock => throw _privateConstructorUsedError;
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderLimit => throw _privateConstructorUsedError;
  @JsonKey(name: "stock_warning")
  bool get stockWarning => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_deleted")
  bool get isDeleted => throw _privateConstructorUsedError;

  /// Serializes this ItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemModelCopyWith<ItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemModelCopyWith<$Res> {
  factory $ItemModelCopyWith(ItemModel value, $Res Function(ItemModel) then) =
      _$ItemModelCopyWithImpl<$Res, ItemModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? price,
      String? description,
      String? category,
      @JsonKey(name: "weights") ItemWeightsModel? weights,
      @JsonKey(name: "barcode") ItemBarcodeModel? barcode,
      String? code,
      double rating,
      @JsonKey(name: "image_url") String? imageUrl,
      String? image,
      @JsonKey(name: "whole_sale_stock") int? wholesaleStock,
      @JsonKey(name: "min_sales_order_limit") int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit") int? maxSalesOrderLimit,
      @JsonKey(name: "stock_warning") bool stockWarning,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "is_deleted") bool isDeleted});

  $ItemWeightsModelCopyWith<$Res>? get weights;
  $ItemBarcodeModelCopyWith<$Res>? get barcode;
}

/// @nodoc
class _$ItemModelCopyWithImpl<$Res, $Val extends ItemModel>
    implements $ItemModelCopyWith<$Res> {
  _$ItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? weights = freezed,
    Object? barcode = freezed,
    Object? code = freezed,
    Object? rating = null,
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? wholesaleStock = freezed,
    Object? minSalesOrderLimit = freezed,
    Object? maxSalesOrderLimit = freezed,
    Object? stockWarning = null,
    Object? isActive = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      weights: freezed == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as ItemWeightsModel?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as ItemBarcodeModel?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      wholesaleStock: freezed == wholesaleStock
          ? _value.wholesaleStock
          : wholesaleStock // ignore: cast_nullable_to_non_nullable
              as int?,
      minSalesOrderLimit: freezed == minSalesOrderLimit
          ? _value.minSalesOrderLimit
          : minSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderLimit: freezed == maxSalesOrderLimit
          ? _value.maxSalesOrderLimit
          : maxSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      stockWarning: null == stockWarning
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemWeightsModelCopyWith<$Res>? get weights {
    if (_value.weights == null) {
      return null;
    }

    return $ItemWeightsModelCopyWith<$Res>(_value.weights!, (value) {
      return _then(_value.copyWith(weights: value) as $Val);
    });
  }

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ItemBarcodeModelCopyWith<$Res>? get barcode {
    if (_value.barcode == null) {
      return null;
    }

    return $ItemBarcodeModelCopyWith<$Res>(_value.barcode!, (value) {
      return _then(_value.copyWith(barcode: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemModelImplCopyWith<$Res>
    implements $ItemModelCopyWith<$Res> {
  factory _$$ItemModelImplCopyWith(
          _$ItemModelImpl value, $Res Function(_$ItemModelImpl) then) =
      __$$ItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? price,
      String? description,
      String? category,
      @JsonKey(name: "weights") ItemWeightsModel? weights,
      @JsonKey(name: "barcode") ItemBarcodeModel? barcode,
      String? code,
      double rating,
      @JsonKey(name: "image_url") String? imageUrl,
      String? image,
      @JsonKey(name: "whole_sale_stock") int? wholesaleStock,
      @JsonKey(name: "min_sales_order_limit") int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit") int? maxSalesOrderLimit,
      @JsonKey(name: "stock_warning") bool stockWarning,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "is_deleted") bool isDeleted});

  @override
  $ItemWeightsModelCopyWith<$Res>? get weights;
  @override
  $ItemBarcodeModelCopyWith<$Res>? get barcode;
}

/// @nodoc
class __$$ItemModelImplCopyWithImpl<$Res>
    extends _$ItemModelCopyWithImpl<$Res, _$ItemModelImpl>
    implements _$$ItemModelImplCopyWith<$Res> {
  __$$ItemModelImplCopyWithImpl(
      _$ItemModelImpl _value, $Res Function(_$ItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? weights = freezed,
    Object? barcode = freezed,
    Object? code = freezed,
    Object? rating = null,
    Object? imageUrl = freezed,
    Object? image = freezed,
    Object? wholesaleStock = freezed,
    Object? minSalesOrderLimit = freezed,
    Object? maxSalesOrderLimit = freezed,
    Object? stockWarning = null,
    Object? isActive = null,
    Object? isDeleted = null,
  }) {
    return _then(_$ItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      weights: freezed == weights
          ? _value.weights
          : weights // ignore: cast_nullable_to_non_nullable
              as ItemWeightsModel?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as ItemBarcodeModel?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      wholesaleStock: freezed == wholesaleStock
          ? _value.wholesaleStock
          : wholesaleStock // ignore: cast_nullable_to_non_nullable
              as int?,
      minSalesOrderLimit: freezed == minSalesOrderLimit
          ? _value.minSalesOrderLimit
          : minSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      maxSalesOrderLimit: freezed == maxSalesOrderLimit
          ? _value.maxSalesOrderLimit
          : maxSalesOrderLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      stockWarning: null == stockWarning
          ? _value.stockWarning
          : stockWarning // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemModelImpl implements _ItemModel {
  const _$ItemModelImpl(
      {this.id,
      this.name,
      this.price,
      this.description,
      this.category,
      @JsonKey(name: "weights") this.weights,
      @JsonKey(name: "barcode") this.barcode,
      this.code,
      this.rating = 0.00,
      @JsonKey(name: "image_url") this.imageUrl,
      this.image,
      @JsonKey(name: "whole_sale_stock") this.wholesaleStock,
      @JsonKey(name: "min_sales_order_limit") this.minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit") this.maxSalesOrderLimit,
      @JsonKey(name: "stock_warning") this.stockWarning = true,
      @JsonKey(name: "is_active") this.isActive = true,
      @JsonKey(name: "is_deleted") this.isDeleted = false});

  factory _$ItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? price;
  @override
  final String? description;
  @override
  final String? category;
  @override
  @JsonKey(name: "weights")
  final ItemWeightsModel? weights;
  @override
  @JsonKey(name: "barcode")
  final ItemBarcodeModel? barcode;
  @override
  final String? code;
  @override
  @JsonKey()
  final double rating;
  @override
  @JsonKey(name: "image_url")
  final String? imageUrl;
  @override
  final String? image;
  @override
  @JsonKey(name: "whole_sale_stock")
  final int? wholesaleStock;
  @override
  @JsonKey(name: "min_sales_order_limit")
  final int? minSalesOrderLimit;
  @override
  @JsonKey(name: "max_sales_order_limit")
  final int? maxSalesOrderLimit;
  @override
  @JsonKey(name: "stock_warning")
  final bool stockWarning;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "is_deleted")
  final bool isDeleted;

  @override
  String toString() {
    return 'ItemModel(id: $id, name: $name, price: $price, description: $description, category: $category, weights: $weights, barcode: $barcode, code: $code, rating: $rating, imageUrl: $imageUrl, image: $image, wholesaleStock: $wholesaleStock, minSalesOrderLimit: $minSalesOrderLimit, maxSalesOrderLimit: $maxSalesOrderLimit, stockWarning: $stockWarning, isActive: $isActive, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.weights, weights) || other.weights == weights) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.wholesaleStock, wholesaleStock) ||
                other.wholesaleStock == wholesaleStock) &&
            (identical(other.minSalesOrderLimit, minSalesOrderLimit) ||
                other.minSalesOrderLimit == minSalesOrderLimit) &&
            (identical(other.maxSalesOrderLimit, maxSalesOrderLimit) ||
                other.maxSalesOrderLimit == maxSalesOrderLimit) &&
            (identical(other.stockWarning, stockWarning) ||
                other.stockWarning == stockWarning) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      price,
      description,
      category,
      weights,
      barcode,
      code,
      rating,
      imageUrl,
      image,
      wholesaleStock,
      minSalesOrderLimit,
      maxSalesOrderLimit,
      stockWarning,
      isActive,
      isDeleted);

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemModelImplCopyWith<_$ItemModelImpl> get copyWith =>
      __$$ItemModelImplCopyWithImpl<_$ItemModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemModelImplToJson(
      this,
    );
  }
}

abstract class _ItemModel implements ItemModel {
  const factory _ItemModel(
      {final int? id,
      final String? name,
      final String? price,
      final String? description,
      final String? category,
      @JsonKey(name: "weights") final ItemWeightsModel? weights,
      @JsonKey(name: "barcode") final ItemBarcodeModel? barcode,
      final String? code,
      final double rating,
      @JsonKey(name: "image_url") final String? imageUrl,
      final String? image,
      @JsonKey(name: "whole_sale_stock") final int? wholesaleStock,
      @JsonKey(name: "min_sales_order_limit") final int? minSalesOrderLimit,
      @JsonKey(name: "max_sales_order_limit") final int? maxSalesOrderLimit,
      @JsonKey(name: "stock_warning") final bool stockWarning,
      @JsonKey(name: "is_active") final bool isActive,
      @JsonKey(name: "is_deleted") final bool isDeleted}) = _$ItemModelImpl;

  factory _ItemModel.fromJson(Map<String, dynamic> json) =
      _$ItemModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get price;
  @override
  String? get description;
  @override
  String? get category;
  @override
  @JsonKey(name: "weights")
  ItemWeightsModel? get weights;
  @override
  @JsonKey(name: "barcode")
  ItemBarcodeModel? get barcode;
  @override
  String? get code;
  @override
  double get rating;
  @override
  @JsonKey(name: "image_url")
  String? get imageUrl;
  @override
  String? get image;
  @override
  @JsonKey(name: "whole_sale_stock")
  int? get wholesaleStock;
  @override
  @JsonKey(name: "min_sales_order_limit")
  int? get minSalesOrderLimit;
  @override
  @JsonKey(name: "max_sales_order_limit")
  int? get maxSalesOrderLimit;
  @override
  @JsonKey(name: "stock_warning")
  bool get stockWarning;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "is_deleted")
  bool get isDeleted;

  /// Create a copy of ItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemModelImplCopyWith<_$ItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemWeightsModel _$ItemWeightsModelFromJson(Map<String, dynamic> json) {
  return _ItemWeightsModel.fromJson(json);
}

/// @nodoc
mixin _$ItemWeightsModel {
  @JsonKey(name: "net_weight")
  double? get netWeight => throw _privateConstructorUsedError;
  @JsonKey(name: "gross_weight")
  double? get grossWeight => throw _privateConstructorUsedError;

  /// Serializes this ItemWeightsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemWeightsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemWeightsModelCopyWith<ItemWeightsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemWeightsModelCopyWith<$Res> {
  factory $ItemWeightsModelCopyWith(
          ItemWeightsModel value, $Res Function(ItemWeightsModel) then) =
      _$ItemWeightsModelCopyWithImpl<$Res, ItemWeightsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "net_weight") double? netWeight,
      @JsonKey(name: "gross_weight") double? grossWeight});
}

/// @nodoc
class _$ItemWeightsModelCopyWithImpl<$Res, $Val extends ItemWeightsModel>
    implements $ItemWeightsModelCopyWith<$Res> {
  _$ItemWeightsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemWeightsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? netWeight = freezed,
    Object? grossWeight = freezed,
  }) {
    return _then(_value.copyWith(
      netWeight: freezed == netWeight
          ? _value.netWeight
          : netWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      grossWeight: freezed == grossWeight
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemWeightsModelImplCopyWith<$Res>
    implements $ItemWeightsModelCopyWith<$Res> {
  factory _$$ItemWeightsModelImplCopyWith(_$ItemWeightsModelImpl value,
          $Res Function(_$ItemWeightsModelImpl) then) =
      __$$ItemWeightsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "net_weight") double? netWeight,
      @JsonKey(name: "gross_weight") double? grossWeight});
}

/// @nodoc
class __$$ItemWeightsModelImplCopyWithImpl<$Res>
    extends _$ItemWeightsModelCopyWithImpl<$Res, _$ItemWeightsModelImpl>
    implements _$$ItemWeightsModelImplCopyWith<$Res> {
  __$$ItemWeightsModelImplCopyWithImpl(_$ItemWeightsModelImpl _value,
      $Res Function(_$ItemWeightsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemWeightsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? netWeight = freezed,
    Object? grossWeight = freezed,
  }) {
    return _then(_$ItemWeightsModelImpl(
      netWeight: freezed == netWeight
          ? _value.netWeight
          : netWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      grossWeight: freezed == grossWeight
          ? _value.grossWeight
          : grossWeight // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemWeightsModelImpl implements _ItemWeightsModel {
  const _$ItemWeightsModelImpl(
      {@JsonKey(name: "net_weight") this.netWeight,
      @JsonKey(name: "gross_weight") this.grossWeight});

  factory _$ItemWeightsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemWeightsModelImplFromJson(json);

  @override
  @JsonKey(name: "net_weight")
  final double? netWeight;
  @override
  @JsonKey(name: "gross_weight")
  final double? grossWeight;

  @override
  String toString() {
    return 'ItemWeightsModel(netWeight: $netWeight, grossWeight: $grossWeight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemWeightsModelImpl &&
            (identical(other.netWeight, netWeight) ||
                other.netWeight == netWeight) &&
            (identical(other.grossWeight, grossWeight) ||
                other.grossWeight == grossWeight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, netWeight, grossWeight);

  /// Create a copy of ItemWeightsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemWeightsModelImplCopyWith<_$ItemWeightsModelImpl> get copyWith =>
      __$$ItemWeightsModelImplCopyWithImpl<_$ItemWeightsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemWeightsModelImplToJson(
      this,
    );
  }
}

abstract class _ItemWeightsModel implements ItemWeightsModel {
  const factory _ItemWeightsModel(
          {@JsonKey(name: "net_weight") final double? netWeight,
          @JsonKey(name: "gross_weight") final double? grossWeight}) =
      _$ItemWeightsModelImpl;

  factory _ItemWeightsModel.fromJson(Map<String, dynamic> json) =
      _$ItemWeightsModelImpl.fromJson;

  @override
  @JsonKey(name: "net_weight")
  double? get netWeight;
  @override
  @JsonKey(name: "gross_weight")
  double? get grossWeight;

  /// Create a copy of ItemWeightsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemWeightsModelImplCopyWith<_$ItemWeightsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemBarcodeModel _$ItemBarcodeModelFromJson(Map<String, dynamic> json) {
  return _ItemBarcodeModel.fromJson(json);
}

/// @nodoc
mixin _$ItemBarcodeModel {
  @JsonKey(name: "barcode_number")
  double? get barcodeNumber => throw _privateConstructorUsedError;

  /// Serializes this ItemBarcodeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ItemBarcodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ItemBarcodeModelCopyWith<ItemBarcodeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemBarcodeModelCopyWith<$Res> {
  factory $ItemBarcodeModelCopyWith(
          ItemBarcodeModel value, $Res Function(ItemBarcodeModel) then) =
      _$ItemBarcodeModelCopyWithImpl<$Res, ItemBarcodeModel>;
  @useResult
  $Res call({@JsonKey(name: "barcode_number") double? barcodeNumber});
}

/// @nodoc
class _$ItemBarcodeModelCopyWithImpl<$Res, $Val extends ItemBarcodeModel>
    implements $ItemBarcodeModelCopyWith<$Res> {
  _$ItemBarcodeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ItemBarcodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcodeNumber = freezed,
  }) {
    return _then(_value.copyWith(
      barcodeNumber: freezed == barcodeNumber
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemBarcodeModelImplCopyWith<$Res>
    implements $ItemBarcodeModelCopyWith<$Res> {
  factory _$$ItemBarcodeModelImplCopyWith(_$ItemBarcodeModelImpl value,
          $Res Function(_$ItemBarcodeModelImpl) then) =
      __$$ItemBarcodeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "barcode_number") double? barcodeNumber});
}

/// @nodoc
class __$$ItemBarcodeModelImplCopyWithImpl<$Res>
    extends _$ItemBarcodeModelCopyWithImpl<$Res, _$ItemBarcodeModelImpl>
    implements _$$ItemBarcodeModelImplCopyWith<$Res> {
  __$$ItemBarcodeModelImplCopyWithImpl(_$ItemBarcodeModelImpl _value,
      $Res Function(_$ItemBarcodeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ItemBarcodeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? barcodeNumber = freezed,
  }) {
    return _then(_$ItemBarcodeModelImpl(
      barcodeNumber: freezed == barcodeNumber
          ? _value.barcodeNumber
          : barcodeNumber // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemBarcodeModelImpl implements _ItemBarcodeModel {
  const _$ItemBarcodeModelImpl(
      {@JsonKey(name: "barcode_number") this.barcodeNumber});

  factory _$ItemBarcodeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemBarcodeModelImplFromJson(json);

  @override
  @JsonKey(name: "barcode_number")
  final double? barcodeNumber;

  @override
  String toString() {
    return 'ItemBarcodeModel(barcodeNumber: $barcodeNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemBarcodeModelImpl &&
            (identical(other.barcodeNumber, barcodeNumber) ||
                other.barcodeNumber == barcodeNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, barcodeNumber);

  /// Create a copy of ItemBarcodeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemBarcodeModelImplCopyWith<_$ItemBarcodeModelImpl> get copyWith =>
      __$$ItemBarcodeModelImplCopyWithImpl<_$ItemBarcodeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemBarcodeModelImplToJson(
      this,
    );
  }
}

abstract class _ItemBarcodeModel implements ItemBarcodeModel {
  const factory _ItemBarcodeModel(
          {@JsonKey(name: "barcode_number") final double? barcodeNumber}) =
      _$ItemBarcodeModelImpl;

  factory _ItemBarcodeModel.fromJson(Map<String, dynamic> json) =
      _$ItemBarcodeModelImpl.fromJson;

  @override
  @JsonKey(name: "barcode_number")
  double? get barcodeNumber;

  /// Create a copy of ItemBarcodeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ItemBarcodeModelImplCopyWith<_$ItemBarcodeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
