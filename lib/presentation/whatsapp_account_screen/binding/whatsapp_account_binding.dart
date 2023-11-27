import '../controller/whatsapp_account_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappAccountScreen.
///
/// This class ensures that the WhatsappAccountController is created when the
/// WhatsappAccountScreen is first loaded.
class WhatsappAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappAccountController());
  }
}
