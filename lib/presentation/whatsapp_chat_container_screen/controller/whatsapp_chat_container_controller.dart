import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_chat_container_screen/models/whatsapp_chat_container_model.dart';

/// A controller class for the WhatsappChatContainerScreen.
///
/// This class manages the state of the WhatsappChatContainerScreen, including the
/// current whatsappChatContainerModelObj
class WhatsappChatContainerController extends GetxController {
  Rx<WhatsappChatContainerModel> whatsappChatContainerModelObj =
      WhatsappChatContainerModel().obs;
}
