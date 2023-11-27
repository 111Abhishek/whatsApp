import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_contact_info_screen/models/whatsapp_contact_info_model.dart';

/// A controller class for the WhatsappContactInfoScreen.
///
/// This class manages the state of the WhatsappContactInfoScreen, including the
/// current whatsappContactInfoModelObj
class WhatsappContactInfoController extends GetxController {
  Rx<WhatsappContactInfoModel> whatsappContactInfoModelObj =
      WhatsappContactInfoModel().obs;
}
