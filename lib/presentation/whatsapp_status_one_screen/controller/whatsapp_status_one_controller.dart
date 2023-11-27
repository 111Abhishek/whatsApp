import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_status_one_screen/models/whatsapp_status_one_model.dart';

/// A controller class for the WhatsappStatusOneScreen.
///
/// This class manages the state of the WhatsappStatusOneScreen, including the
/// current whatsappStatusOneModelObj
class WhatsappStatusOneController extends GetxController {
  Rx<WhatsappStatusOneModel> whatsappStatusOneModelObj =
      WhatsappStatusOneModel().obs;
}
