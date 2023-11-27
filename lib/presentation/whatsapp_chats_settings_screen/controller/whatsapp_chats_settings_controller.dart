import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_chats_settings_screen/models/whatsapp_chats_settings_model.dart';

/// A controller class for the WhatsappChatsSettingsScreen.
///
/// This class manages the state of the WhatsappChatsSettingsScreen, including the
/// current whatsappChatsSettingsModelObj
class WhatsappChatsSettingsController extends GetxController {
  Rx<WhatsappChatsSettingsModel> whatsappChatsSettingsModelObj =
      WhatsappChatsSettingsModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
