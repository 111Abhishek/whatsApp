import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_notifications_tab_container_screen/models/whatsapp_notifications_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the WhatsappNotificationsTabContainerScreen.
///
/// This class manages the state of the WhatsappNotificationsTabContainerScreen, including the
/// current whatsappNotificationsTabContainerModelObj
class WhatsappNotificationsTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController descriptionController = TextEditingController();

  Rx<WhatsappNotificationsTabContainerModel>
      whatsappNotificationsTabContainerModelObj =
      WhatsappNotificationsTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 2));

  @override
  void onClose() {
    super.onClose();
    descriptionController.dispose();
  }
}
