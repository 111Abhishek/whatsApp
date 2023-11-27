import '../controller/whatsapp_chats_edit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappChatsEditScreen.
///
/// This class ensures that the WhatsappChatsEditController is created when the
/// WhatsappChatsEditScreen is first loaded.
class WhatsappChatsEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappChatsEditController());
  }
}
