import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_calls_edit_page/models/whatsapp_calls_edit_model.dart';

/// A controller class for the WhatsappCallsEditPage.
///
/// This class manages the state of the WhatsappCallsEditPage, including the
/// current whatsappCallsEditModelObj
class WhatsappCallsEditController extends GetxController {
  WhatsappCallsEditController(this.whatsappCallsEditModelObj);

  Rx<WhatsappCallsEditModel> whatsappCallsEditModelObj;
}
