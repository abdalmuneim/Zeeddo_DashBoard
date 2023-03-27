import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shahrukh_s_application1/core/app_export.dart';
import 'package:shahrukh_s_application1/core/resources/app_string.dart';

import 'package:shahrukh_s_application1/widgets/custom_text.dart';

enum ImageDimensions {
  Logo,
  Slider,
  Fav,
  Alternative,
  Any,
}

class ImagePic {
  static Future<io.File?> _getImage(
      ImageSource source, ImageDimensions imageDimensions) async {
    XFile? imageResult = await ImagePicker().pickImage(
      source: source,
      preferredCameraDevice: CameraDevice.front,
      imageQuality: 20,
      maxHeight: imageDimensions == ImageDimensions.Logo
          ? getVerticalSize(30)
          : imageDimensions == ImageDimensions.Slider
              ? getVerticalSize(800)
              : imageDimensions == ImageDimensions.Fav
                  ? getVerticalSize(196)
                  : null,
      maxWidth: imageDimensions == ImageDimensions.Logo
          ? getHorizontalSize(150)
          : imageDimensions == ImageDimensions.Slider
              ? getHorizontalSize(1024)
              : imageDimensions == ImageDimensions.Fav
                  ? getHorizontalSize(196)
                  : null,
    );
    if (imageResult != null) {
      return io.File(imageResult.path);
    } else {
      return null;
    }
  }

  static Future<io.File?> showBottomSheetPic(
      ImageDimensions imageDimensions) async {
    return await Get.bottomSheet(
      Container(
        color: Colors.white,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// camera
            InkWell(
              onTap: () async {
                io.File? result =
                    await _getImage(ImageSource.camera, imageDimensions);
                Get.back(result: result);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.camera,
                    color: Colors.green,
                    size: 50,
                  ),
                  const SizedBox(height: 10),
                  CustomText(
                    title: AppString.camera,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            /// gallery
            InkWell(
              onTap: () async {
                io.File? result =
                    await _getImage(ImageSource.gallery, imageDimensions);
                if (Get.isBottomSheetOpen ?? false) {
                  Get.back(result: result);
                }
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.image,
                    color: Colors.green,
                    size: 50,
                  ),
                  const SizedBox(height: 5),
                  CustomText(
                    title: AppString.gallery,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
