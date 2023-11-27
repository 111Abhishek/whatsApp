import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_status_screen/models/whatsapp_status_model.dart';

/// A controller class for the WhatsappStatusScreen.
///
/// This class manages the state of the WhatsappStatusScreen, including the
/// current whatsappStatusModelObj
class WhatsappStatusController extends GetxController {
  Rx<WhatsappStatusModel> whatsappStatusModelObj = WhatsappStatusModel().obs;
}
