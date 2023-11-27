import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_settings_modal_screen/models/whatsapp_settings_modal_model.dart';

/// A controller class for the WhatsappSettingsModalScreen.
///
/// This class manages the state of the WhatsappSettingsModalScreen, including the
/// current whatsappSettingsModalModelObj
class WhatsappSettingsModalController extends GetxController {
  Rx<WhatsappSettingsModalModel> whatsappSettingsModalModelObj =
      WhatsappSettingsModalModel().obs;
}
