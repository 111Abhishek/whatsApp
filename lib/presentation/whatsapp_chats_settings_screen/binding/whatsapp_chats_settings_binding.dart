import '../controller/whatsapp_chats_settings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappChatsSettingsScreen.
///
/// This class ensures that the WhatsappChatsSettingsController is created when the
/// WhatsappChatsSettingsScreen is first loaded.
class WhatsappChatsSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappChatsSettingsController());
  }
}
