import '../controller/whatsapp_chat_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappChatContainerScreen.
///
/// This class ensures that the WhatsappChatContainerController is created when the
/// WhatsappChatContainerScreen is first loaded.
class WhatsappChatContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappChatContainerController());
  }
}
