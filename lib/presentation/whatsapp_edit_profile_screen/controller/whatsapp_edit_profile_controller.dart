import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_edit_profile_screen/models/whatsapp_edit_profile_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WhatsappEditProfileScreen.
///
/// This class manages the state of the WhatsappEditProfileScreen, including the
/// current whatsappEditProfileModelObj
class WhatsappEditProfileController extends GetxController {
  TextEditingController seventyFourController = TextEditingController();

  Rx<WhatsappEditProfileModel> whatsappEditProfileModelObj =
      WhatsappEditProfileModel().obs;

  @override
  void onClose() {
    super.onClose();
    seventyFourController.dispose();
  }
}
