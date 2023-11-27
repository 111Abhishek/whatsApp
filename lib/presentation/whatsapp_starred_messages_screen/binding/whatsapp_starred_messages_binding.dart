import '../controller/whatsapp_starred_messages_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappStarredMessagesScreen.
///
/// This class ensures that the WhatsappStarredMessagesController is created when the
/// WhatsappStarredMessagesScreen is first loaded.
class WhatsappStarredMessagesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappStarredMessagesController());
  }
}
