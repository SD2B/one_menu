import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:one_menu/common_widgets/custom_button.dart';
import 'package:one_menu/common_widgets/custom_image_picker.dart';
import 'package:one_menu/common_widgets/custom_text_field.dart';
import 'package:one_menu/common_widgets/rating_widget.dart';
import 'package:one_menu/common_widgets/sd_toast.dart';
import 'package:one_menu/core/colors.dart';
import 'package:one_menu/helpers/sddb_helper.dart';
import 'package:one_menu/models/item_model.dart';
import 'package:one_menu/view/menu/add/add_menu_section_builder.dart';
import 'package:one_menu/vm/item_list_vm.dart';
import 'package:toastification/toastification.dart';

class AddMenu extends HookConsumerWidget {
  const AddMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final barCodeController = useTextEditingController();
    final nameController = useTextEditingController();
    final descriptionController = useTextEditingController();
    final wholeSaleStockController = useTextEditingController();
    final priceController = useTextEditingController();
    final categoryController = useTextEditingController();
    final netController = useTextEditingController();
    final grossController = useTextEditingController();
    final minController = useTextEditingController();
    final maxController = useTextEditingController();
    final imageFile = useState<File?>(null);
    final itemModel = useState(const ItemModel());
    final nameFocusNode = useFocusNode();
    final descriptionFocusNode = useFocusNode();
    final wholeSaleStockFocusNode = useFocusNode();
    final priceFocusNode = useFocusNode();
    final categoryFocusNode = useFocusNode();
    final netFocusNode = useFocusNode();
    final grossFocusNode = useFocusNode();
    final minFocusNode = useFocusNode();
    final maxFocusNode = useFocusNode();

    final currentRating = useState(0);
    final isLoading = useState(false);

    final _formKey = GlobalKey<FormState>();

    final scrollController = useScrollController();

    void backToTop() {
      scrollController.animateTo(1, duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
    }

    void clearAll() {
      //controllers
      barCodeController.clear();
      nameController.clear();
      descriptionController.clear();
      wholeSaleStockController.clear();
      priceController.clear();
      categoryController.clear();
      netController.clear();
      grossController.clear();
      minController.clear();
      maxController.clear();
      //others
      imageFile.value = null;
      currentRating.value = 0;
    }

    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: SingleChildScrollView(
        controller: scrollController,
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add Menu", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 28, fontWeight: FontWeight.w500)),
              10.height,
              AddMenuSectionBuilder(
                children: [
                  10.height,
                  Row(
                    children: [
                      AddMenuImageSection(
                        imageFileData: imageFile,
                        onPicked: (p0) {
                          imageFile.value = p0;
                          
                        },
                      ),
                    ],
                  ),
                  10.height,
                  Text("Basic Details", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
                  10.height,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField(
                        height: 47,
                        width: 100,
                        controller: barCodeController,
                        textInputType: const TextInputType.numberWithOptions(),
                        hintText: "Barcode",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the barcode';
                          }
                          return null;
                        },
                        onSubmitted: (p0) => nameFocusNode.requestFocus(),
                      ),
                      5.width,
                      CustomTextField(
                        focusNode: nameFocusNode,
                        height: 47,
                        width: (context.width() - 172),
                        controller: nameController,
                        hintText: "Item name",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter an item name';
                          }
                          return null;
                        },
                        onSubmitted: (p0) => descriptionFocusNode.requestFocus(),
                      ),
                    ],
                  ),
                  10.height,
                  CustomTextField(
                    width: context.width(),
                    focusNode: descriptionFocusNode,
                    controller: descriptionController,
                    hintText: "Description",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a description';
                      }
                      return null;
                    },
                    onSubmitted: (p0) => wholeSaleStockFocusNode.requestFocus(),
                  ),
                  10.height,
                  CustomTextField(
                    width: context.width(),
                    focusNode: wholeSaleStockFocusNode,
                    controller: wholeSaleStockController,
                    textInputType: const TextInputType.numberWithOptions(),
                    hintText: "Wholesale stock limit",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a wholesale stock limit';
                      }
                      return null;
                    },
                    onSubmitted: (p0) => priceFocusNode.requestFocus(),
                  ),
                  10.height,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField(
                        focusNode: priceFocusNode,
                        height: 47,
                        width: 150,
                        controller: priceController,
                        textInputType: const TextInputType.numberWithOptions(),
                        hintText: "Price",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the price';
                          }
                          return null;
                        },
                        onSubmitted: (p0) => categoryFocusNode.requestFocus(),
                      ),
                      5.width,
                      CustomTextField(
                        focusNode: categoryFocusNode,
                        height: 47,
                        width: (context.width() - 40) / 2.1,
                        controller: categoryController,
                        hintText: "Category",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the category';
                          }
                          return null;
                        },
                        onSubmitted: (p0) => netFocusNode.requestFocus(),
                      ),
                    ],
                  ),
                  10.height
                ],
              ),
              10.height,
              AddMenuSectionBuilder(
                children: [
                  Text("Weights", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
                  10.height,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField(
                        focusNode: netFocusNode,
                        height: 47,
                        width: (context.width() - 55) / 2.1,
                        controller: netController,
                        textInputType: const TextInputType.numberWithOptions(),
                        hintText: "Net",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter net weight';
                          }
                          return null;
                        },
                        onSubmitted: (p0) => grossFocusNode.requestFocus(),
                      ),
                      5.width,
                      CustomTextField(
                        focusNode: grossFocusNode,
                        height: 47,
                        width: (context.width() - 55) / 2.1,
                        controller: grossController,
                        textInputType: const TextInputType.numberWithOptions(),
                        hintText: "Gross",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter gross weight';
                          }
                          return null;
                        },
                        onSubmitted: (p0) => minFocusNode.requestFocus(),
                      ),
                    ],
                  ),
                  10.height
                ],
              ),
              10.height,
              AddMenuSectionBuilder(
                children: [
                  Text("Sales Order Limit", style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 16, fontWeight: FontWeight.w500)),
                  10.height,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextField(
                        focusNode: minFocusNode,
                        height: 47,
                        width: (context.width() - 55) / 2.1,
                        controller: minController,
                        hintText: "Minimum",
                        textInputType: const TextInputType.numberWithOptions(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter minimum order limit';
                          }
                          return null;
                        },
                        onSubmitted: (p0) => maxFocusNode.requestFocus(),
                      ),
                      5.width,
                      CustomTextField(
                        focusNode: maxFocusNode,
                        height: 47,
                        width: (context.width() - 55) / 2.1,
                        controller: maxController,
                        hintText: "Maximum",
                        textInputType: const TextInputType.numberWithOptions(),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter maximum order limit';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                  10.height
                ],
              ),
              10.height,
              AddMenuSectionBuilder(
                children: [
                  SizedBox(
                    width: context.width(),
                    child: CheckboxListTile.adaptive(
                      contentPadding: EdgeInsets.zero,
                      value: itemModel.value.isActive,
                      onChanged: (value) {
                        itemModel.value = itemModel.value.copyWith(isActive: value ?? true);
                      },
                      title: Text(
                        "Active",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, color: ColorCode.colorList(context).customTextColor),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: context.width(),
                    child: CheckboxListTile.adaptive(
                      contentPadding: EdgeInsets.zero,
                      value: itemModel.value.stockWarning,
                      onChanged: (value) {
                        itemModel.value = itemModel.value.copyWith(stockWarning: value ?? true);
                      },
                      title: Text(
                        "Stock warning",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 16, color: ColorCode.colorList(context).customTextColor),
                      ),
                    ),
                  ),
                  10.height,
                  RatingWidget(
                    currentRating: currentRating,
                    onRatingChanged: (p0) {
                      itemModel.value = itemModel.value.copyWith(rating: double.parse("$p0"));
                    },
                  ),
                  20.height,
                  CustomButton(
                    isLoading: isLoading.value,
                    height: 50,
                    width: context.width(),
                    text: "Save",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w500),
                    type: Buttontype.primary,
                    onTap: () async {
                      if ((_formKey.currentState?.validate() ?? false) && imageFile.value != null) {
                        isLoading.value = true;
                        final imageUrl = await ref.read(itemListVMProvider.notifier).uploadImage(imageFile.value!);
                        itemModel.value = itemModel.value.copyWith(image: imageUrl, barcode: ItemBarcodeModel(barcodeNumber: double.parse(barCodeController.text)), name: nameController.text, description: descriptionController.text, price: priceController.text, category: categoryController.text, weights: ItemWeightsModel(netWeight: double.parse(netController.text), grossWeight: double.parse(grossController.text)), minSalesOrderLimit: int.parse(minController.text), maxSalesOrderLimit: int.parse(maxController.text));
                        bool isSuccess = await ref.read(itemListVMProvider.notifier).addMenu(itemModel.value);
                        isLoading.value = false;
                        if (isSuccess == true) {
                          clearAll();
                          SDToast.showToast(context, description: "Item added successfully", type: ToastificationType.success);
                          backToTop();
                        }
                      }
                    },
                  ),
                  10.height,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

