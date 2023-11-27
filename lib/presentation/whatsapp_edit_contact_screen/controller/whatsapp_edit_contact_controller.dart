import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_edit_contact_screen/models/whatsapp_edit_contact_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WhatsappEditContactScreen.
///
/// This class manages the state of the WhatsappEditContactScreen, including the
/// current whatsappEditContactModelObj
class WhatsappEditContactController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController surnameFieldController = TextEditingController();

  Rx<WhatsappEditContactModel> whatsappEditContactModelObj =
      WhatsappEditContactModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
    surnameFieldController.dispose();
  }
}
