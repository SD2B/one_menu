import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/item_model.dart';
import 'package:one_menu/repositories/item_repository.dart';

class ItemListVM extends AsyncNotifier<List<ItemModel>> {
  @override
  Future<List<ItemModel>> build() async {
    return await getItems();
  }

  Future<List<ItemModel>> getItems({bool isBuild = true}) async {
    try {
      if (isBuild == false) state = AsyncValue.loading();
      List<ItemModel> itemList = await ItemRepository.getItems();
      state = AsyncValue.data(itemList);
      return itemList;
    } catch (e) {
      throw Exception('Failed to load items: $e');
    }
  }

  Future<ItemModel> getItem(int id) async {
    try {
      ItemModel model = await ItemRepository.getItem(id);
      qp(model, ";;;;;;;;;;;;;;;;;;;;;;;;;;;;;");
      return model;
    } catch (e) {
      throw Exception('Failed to load item: $e');
    }
  }

  Future<bool> addMenu(ItemModel model) async {
    bool res = await ItemRepository.addMenu(model);
    return res;
  }
}

// class ItemVM extends AsyncNotifier<ItemModel> {
//   @override
//   Future<ItemModel> build() async {
//     return await getItem();
//   }

//   Future<bool> addMenu(ItemModel model) async {
//     bool res = await ItemRepository.addMenu(model);
//     return res;
//   }
// }

final itemListVMProvider = AsyncNotifierProvider<ItemListVM, List<ItemModel>>(ItemListVM.new);
