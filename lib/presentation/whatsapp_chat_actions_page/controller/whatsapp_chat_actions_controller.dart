import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_chat_actions_page/models/whatsapp_chat_actions_model.dart';

/// A controller class for the WhatsappChatActionsPage.
///
/// This class manages the state of the WhatsappChatActionsPage, including the
/// current whatsappChatActionsModelObj
class WhatsappChatActionsController extends GetxController {
  WhatsappChatActionsController(this.whatsappChatActionsModelObj);

  Rx<WhatsappChatActionsModel> whatsappChatActionsModelObj;
}
