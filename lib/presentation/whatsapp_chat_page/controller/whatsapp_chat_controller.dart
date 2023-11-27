import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_chat_page/models/whatsapp_chat_model.dart';

/// A controller class for the WhatsappChatPage.
///
/// This class manages the state of the WhatsappChatPage, including the
/// current whatsappChatModelObj
class WhatsappChatController extends GetxController {
  WhatsappChatController(this.whatsappChatModelObj);

  Rx<WhatsappChatModel> whatsappChatModelObj;
}
