import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_chats_edit_screen/models/whatsapp_chats_edit_model.dart';

/// A controller class for the WhatsappChatsEditScreen.
///
/// This class manages the state of the WhatsappChatsEditScreen, including the
/// current whatsappChatsEditModelObj
class WhatsappChatsEditController extends GetxController {
  Rx<WhatsappChatsEditModel> whatsappChatsEditModelObj =
      WhatsappChatsEditModel().obs;
}
