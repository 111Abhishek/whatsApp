import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_add_modal_screen/models/whatsapp_add_modal_model.dart';

/// A controller class for the WhatsappAddModalScreen.
///
/// This class manages the state of the WhatsappAddModalScreen, including the
/// current whatsappAddModalModelObj
class WhatsappAddModalController extends GetxController {
  Rx<WhatsappAddModalModel> whatsappAddModalModelObj =
      WhatsappAddModalModel().obs;
}
