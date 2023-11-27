import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_settings_screen/models/whatsapp_settings_model.dart';

/// A controller class for the WhatsappSettingsScreen.
///
/// This class manages the state of the WhatsappSettingsScreen, including the
/// current whatsappSettingsModelObj
class WhatsappSettingsController extends GetxController {
  Rx<WhatsappSettingsModel> whatsappSettingsModelObj =
      WhatsappSettingsModel().obs;
}
