import '../controller/whatsapp_camera_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappCameraScreen.
///
/// This class ensures that the WhatsappCameraController is created when the
/// WhatsappCameraScreen is first loaded.
class WhatsappCameraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappCameraController());
  }
}
