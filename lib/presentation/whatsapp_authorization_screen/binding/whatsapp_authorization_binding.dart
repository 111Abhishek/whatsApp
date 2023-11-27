import '../controller/whatsapp_authorization_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappAuthorizationScreen.
///
/// This class ensures that the WhatsappAuthorizationController is created when the
/// WhatsappAuthorizationScreen is first loaded.
class WhatsappAuthorizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappAuthorizationController());
  }
}
