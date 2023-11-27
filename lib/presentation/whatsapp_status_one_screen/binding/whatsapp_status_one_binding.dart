import '../controller/whatsapp_status_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappStatusOneScreen.
///
/// This class ensures that the WhatsappStatusOneController is created when the
/// WhatsappStatusOneScreen is first loaded.
class WhatsappStatusOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappStatusOneController());
  }
}
