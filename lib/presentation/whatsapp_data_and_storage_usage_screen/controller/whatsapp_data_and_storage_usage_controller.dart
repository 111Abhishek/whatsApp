import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_data_and_storage_usage_screen/models/whatsapp_data_and_storage_usage_model.dart';

/// A controller class for the WhatsappDataAndStorageUsageScreen.
///
/// This class manages the state of the WhatsappDataAndStorageUsageScreen, including the
/// current whatsappDataAndStorageUsageModelObj
class WhatsappDataAndStorageUsageController extends GetxController {
  Rx<WhatsappDataAndStorageUsageModel> whatsappDataAndStorageUsageModelObj =
      WhatsappDataAndStorageUsageModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
