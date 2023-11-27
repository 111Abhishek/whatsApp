import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_notifications_page/models/whatsapp_notifications_model.dart';

/// A controller class for the WhatsappNotificationsPage.
///
/// This class manages the state of the WhatsappNotificationsPage, including the
/// current whatsappNotificationsModelObj
class WhatsappNotificationsController extends GetxController {
  WhatsappNotificationsController(this.whatsappNotificationsModelObj);

  Rx<WhatsappNotificationsModel> whatsappNotificationsModelObj;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> isSelectedSwitch1 = false.obs;
}
