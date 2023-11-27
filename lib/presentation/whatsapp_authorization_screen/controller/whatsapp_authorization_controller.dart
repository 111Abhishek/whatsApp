import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_authorization_screen/models/whatsapp_authorization_model.dart';

/// A controller class for the WhatsappAuthorizationScreen.
///
/// This class manages the state of the WhatsappAuthorizationScreen, including the
/// current whatsappAuthorizationModelObj
class WhatsappAuthorizationController extends GetxController {
  Rx<WhatsappAuthorizationModel> whatsappAuthorizationModelObj =
      WhatsappAuthorizationModel().obs;
}
