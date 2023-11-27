import '../controller/whatsapp_settings_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappSettingsScreen.
///
/// This class ensures that the WhatsappSettingsController is created when the
/// WhatsappSettingsScreen is first loaded.
class WhatsappSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappSettingsController());
  }
}
