import 'package:testvalley/core/app_export.dart';
import 'package:testvalley/presentation/k1_screen/models/k1_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K1Screen.
///
/// This class manages the state of the K1Screen, including the
/// current k1ModelObj
class K1Controller extends GetxController {
  TextEditingController sendMessageController = TextEditingController();

  Rx<K1Model> k1ModelObj = K1Model().obs;

  @override
  void onClose() {
    super.onClose();
    sendMessageController.dispose();
  }
}
