import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:one_menu/core/colors.dart';
import 'package:permission_handler/permission_handler.dart';

class CustomImagePicker extends HookWidget {
  final Widget child;
  final Function(File) onImagePicked;

  const CustomImagePicker({super.key, required this.child, required this.onImagePicked});

  @override
  Widget build(BuildContext context) {
    final imageFileData = useState<File?>(null);

    Future<void> pickImage() async {
      // Request permission to access photos
      final permissionStatus = await Permission.photos.request();

      if (!permissionStatus.isGranted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Permission to access photos was denied!")),
        );
        return;
      }

      // Open the image picker
      final picker = ImagePicker();
      final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        final pickedImage = File(pickedFile.path);
        imageFileData.value = pickedImage;
        onImagePicked(pickedImage);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("No image was selected.")),
        );
      }
      final pickedImage = File(pickedFile!.path);
      imageFileData.value = pickedImage;
    }

    return InkWell(
      onTap: () {
        pickImage();
      },
      child: child,
    );
  }
}

class AddMenuImageSection extends HookWidget {
  final ValueNotifier<File?> imageFileData;
  final Function(File) onPicked;

  const AddMenuImageSection({super.key,required this.imageFileData, required this.onPicked});

  @override
  Widget build(BuildContext context) {

    useEffect(() {
      if (imageFileData.value != null) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          onPicked(imageFileData.value!); // Call after the current frame
        });
      }
      return null;
    }, [imageFileData.value]); // Add dependency to watch for changes

    return CustomImagePicker(
      onImagePicked: (data) {
        imageFileData.value = data; // Update state when image is picked
      },
      child: Stack(
        children: [
          Container(
            height: 160,
            width: MediaQuery.of(context).size.width - 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: ColorCode.colorList(context).borderColor!),
              color: ColorCode.colorList(context).borderColor!.withOpacity(.5),
            ),
            child: imageFileData.value != null
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      imageFileData.value!,
                      fit: BoxFit.cover,
                    ),
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.upload_rounded,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "Upload Image",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                      ),
                    ],
                  ),
          ),
          if (imageFileData.value != null)
            Positioned(
              right: 4,
              top: 4,
              child: InkWell(
                onTap: () => imageFileData.value = null, // Clear the image
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red.shade400,
                  ),
                  child: const Icon(
                    Icons.close_rounded,
                    size: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
