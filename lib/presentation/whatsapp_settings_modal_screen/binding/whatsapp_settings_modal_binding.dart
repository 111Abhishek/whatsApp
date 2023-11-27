import '../controller/whatsapp_settings_modal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappSettingsModalScreen.
///
/// This class ensures that the WhatsappSettingsModalController is created when the
/// WhatsappSettingsModalScreen is first loaded.
class WhatsappSettingsModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappSettingsModalController());
  }
}
