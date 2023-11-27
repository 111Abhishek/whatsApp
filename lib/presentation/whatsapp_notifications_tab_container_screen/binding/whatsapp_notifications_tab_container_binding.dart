import '../controller/whatsapp_notifications_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappNotificationsTabContainerScreen.
///
/// This class ensures that the WhatsappNotificationsTabContainerController is created when the
/// WhatsappNotificationsTabContainerScreen is first loaded.
class WhatsappNotificationsTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappNotificationsTabContainerController());
  }
}
