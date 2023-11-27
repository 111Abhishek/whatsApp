import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_camera_screen/models/whatsapp_camera_model.dart';

/// A controller class for the WhatsappCameraScreen.
///
/// This class manages the state of the WhatsappCameraScreen, including the
/// current whatsappCameraModelObj
class WhatsappCameraController extends GetxController {
  Rx<WhatsappCameraModel> whatsappCameraModelObj = WhatsappCameraModel().obs;
}
