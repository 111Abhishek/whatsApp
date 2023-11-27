import '../controller/whatsapp_edit_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappEditProfileScreen.
///
/// This class ensures that the WhatsappEditProfileController is created when the
/// WhatsappEditProfileScreen is first loaded.
class WhatsappEditProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappEditProfileController());
  }
}
