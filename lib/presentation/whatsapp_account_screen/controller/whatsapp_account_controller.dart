import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_account_screen/models/whatsapp_account_model.dart';

/// A controller class for the WhatsappAccountScreen.
///
/// This class manages the state of the WhatsappAccountScreen, including the
/// current whatsappAccountModelObj
class WhatsappAccountController extends GetxController {
  Rx<WhatsappAccountModel> whatsappAccountModelObj = WhatsappAccountModel().obs;
}
