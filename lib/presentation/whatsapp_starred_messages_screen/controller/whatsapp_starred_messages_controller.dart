import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_starred_messages_screen/models/whatsapp_starred_messages_model.dart';

/// A controller class for the WhatsappStarredMessagesScreen.
///
/// This class manages the state of the WhatsappStarredMessagesScreen, including the
/// current whatsappStarredMessagesModelObj
class WhatsappStarredMessagesController extends GetxController {
  Rx<WhatsappStarredMessagesModel> whatsappStarredMessagesModelObj =
      WhatsappStarredMessagesModel().obs;
}
