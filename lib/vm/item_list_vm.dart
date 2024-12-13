import 'package:flutter_riverpod/flutter_riverpod.dart';
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
}

final itemListVMProvider = AsyncNotifierProvider<ItemListVM, List<ItemModel>>(ItemListVM.new);
