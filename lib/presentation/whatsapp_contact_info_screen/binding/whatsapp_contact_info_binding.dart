import '../controller/whatsapp_contact_info_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappContactInfoScreen.
///
/// This class ensures that the WhatsappContactInfoController is created when the
/// WhatsappContactInfoScreen is first loaded.
class WhatsappContactInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappContactInfoController());
  }
}
