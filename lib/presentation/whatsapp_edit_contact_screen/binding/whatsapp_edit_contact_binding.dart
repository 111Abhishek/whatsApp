import '../controller/whatsapp_edit_contact_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappEditContactScreen.
///
/// This class ensures that the WhatsappEditContactController is created when the
/// WhatsappEditContactScreen is first loaded.
class WhatsappEditContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappEditContactController());
  }
}
