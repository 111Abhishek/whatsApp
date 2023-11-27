import '../controller/whatsapp_add_modal_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappAddModalScreen.
///
/// This class ensures that the WhatsappAddModalController is created when the
/// WhatsappAddModalScreen is first loaded.
class WhatsappAddModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappAddModalController());
  }
}
