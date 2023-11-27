import '../controller/whatsapp_data_and_storage_usage_controller.dart';
import 'package:get/get.dart';

/// A binding class for the WhatsappDataAndStorageUsageScreen.
///
/// This class ensures that the WhatsappDataAndStorageUsageController is created when the
/// WhatsappDataAndStorageUsageScreen is first loaded.
class WhatsappDataAndStorageUsageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WhatsappDataAndStorageUsageController());
  }
}
