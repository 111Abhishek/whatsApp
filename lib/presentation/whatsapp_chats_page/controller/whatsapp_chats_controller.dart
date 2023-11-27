import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_chats_page/models/whatsapp_chats_model.dart';

/// A controller class for the WhatsappChatsPage.
///
/// This class manages the state of the WhatsappChatsPage, including the
/// current whatsappChatsModelObj
class WhatsappChatsController extends GetxController {
  WhatsappChatsController(this.whatsappChatsModelObj);

  Rx<WhatsappChatsModel> whatsappChatsModelObj;
}
