import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supercoder_task_assignment/utils/constants/dummy_data.dart';

class DashboardController extends GetxController {
  var userName = "홍길동".obs;

  var campaigns = {
    "applied": dummyAppliedCampaigns.length.obs,
    "inProgress": dummyInProgressCampaigns.length.obs,
    "completed": dummyCompletedCampaigns.length.obs,
  };

  var pickedImage = Rx<File?>(null);
  final ImagePicker _picker = ImagePicker();

  Future<void> pickImage(BuildContext context) async {
    Get.bottomSheet(
      Container(
        color: Colors.white,
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: const Text("카메라"),
              onTap: () async {
                final XFile? image = await _picker.pickImage(source: ImageSource.camera);
                if (image != null) {
                  pickedImage.value = File(image.path);
                }
                Get.back(); // close bottom sheet
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_library),
              title: const Text("갤러리"),
              onTap: () async {
                final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                if (image != null) {
                  pickedImage.value = File(image.path);
                }
                Get.back(); // close bottom sheet
              },
            ),
          ],
        ),
      ),
    );
  }

  void logout() {
    // TODO: Add logout logic
    print("User logged out");
  }
}