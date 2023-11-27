import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_calls_page/models/whatsapp_calls_model.dart';

/// A controller class for the WhatsappCallsPage.
///
/// This class manages the state of the WhatsappCallsPage, including the
/// current whatsappCallsModelObj
class WhatsappCallsController extends GetxController {
  WhatsappCallsController(this.whatsappCallsModelObj);

  Rx<WhatsappCallsModel> whatsappCallsModelObj;
}
