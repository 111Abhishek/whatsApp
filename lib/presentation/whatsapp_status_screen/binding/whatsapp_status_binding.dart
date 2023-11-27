import '../controller/whatsapp_status_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappStatusScreen.
///
/// This class ensures that the WhatsappStatusController is created when the
/// WhatsappStatusScreen is first loaded.
class WhatsappStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappStatusController());
  }
}
