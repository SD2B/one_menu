import 'package:one_menu/helpers/api_helper.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/item_model.dart';

class ItemRepository {
  static Future<List<ItemModel>> getItems() async {
    List<ItemModel> itemList = [];
    try {
      final response = await apiClient.get(ApiHelper.getItemList);
      qp('Food items: $response');

      if (response != null && response['results'] != null) {
        itemList = (response['results'] as List).map((item) {
          return ItemModel.fromJson(item);
        }).toList();
      }

      return itemList;
    } catch (e) {
      qp('Failed to list food items: $e');
      return itemList;
    }
  }

  static Future<ItemModel> getItem(int id) async {
    ItemModel model = const ItemModel();
    try {
      final response = await apiClient.get(ApiHelper.getNDelete(id));
      qp('Food item: $response');
      if (response != null) {
        model = ItemModel.fromJson(response);
      }
      return model;
    } catch (e) {
      qp('Failed to list food items: $e');
      return model;
    }
  }

  static Future<bool> addMenu(ItemModel model) async {
    try {
      await apiClient.post(ApiHelper.addMenu, model.toJson());
      return true;
    } catch (e) {
      return false;
    }
  }
}
