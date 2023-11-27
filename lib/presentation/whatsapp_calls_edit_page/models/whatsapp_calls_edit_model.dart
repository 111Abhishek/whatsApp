import '../../../core/app_export.dart';
import 'whatsappcallsedit_item_model.dart';

/// This class defines the variables used in the [whatsapp_calls_edit_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WhatsappCallsEditModel {
  Rx<List<WhatsappcallseditItemModel>> whatsappcallseditItemList = Rx([
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval40x40.obs,
        martinRandolph: "Martin Randolph".obs,
        outgoing: "outgoing".obs,
        oneHundredOneThousandThreeHund: "10/13/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval8.obs,
        martinRandolph: "Karen Castillo".obs,
        outgoing: "outgoing".obs,
        oneHundredOneThousandThreeHund: "10/11/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval9.obs,
        martinRandolph: "Kieron Dotson".obs,
        outgoing: "outgoing".obs,
        oneHundredOneThousandThreeHund: "10/8/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval8.obs,
        martinRandolph: "Karen Castillo".obs,
        outgoing: "missed".obs,
        oneHundredOneThousandThreeHund: "9/30/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval10.obs,
        martinRandolph: "Zack John".obs,
        outgoing: "incoming".obs,
        oneHundredOneThousandThreeHund: "9/24/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval9.obs,
        martinRandolph: "Kieron Dotson".obs,
        outgoing: "outgoing".obs,
        oneHundredOneThousandThreeHund: "9/16/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval9.obs,
        martinRandolph: "Kieron Dotson".obs,
        outgoing: "outgoing".obs,
        oneHundredOneThousandThreeHund: "9/15/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval11.obs,
        martinRandolph: "Jamie Franco".obs,
        outgoing: "incoming".obs,
        oneHundredOneThousandThreeHund: "9/10/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval12.obs,
        martinRandolph: "Martha Craig".obs,
        outgoing: "incoming".obs,
        oneHundredOneThousandThreeHund: "9/10/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval12.obs,
        martinRandolph: "Martha Craig".obs,
        outgoing: "outgoing".obs,
        oneHundredOneThousandThreeHund: "9/6/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval13.obs,
        martinRandolph: "Maisy Humphrey".obs,
        outgoing: "outgoing".obs,
        oneHundredOneThousandThreeHund: "8/22/19".obs),
    WhatsappcallseditItemModel(
        circleImage: ImageConstant.imgOval11.obs,
        martinRandolph: "Jamie Franco".obs,
        outgoing: "missed".obs,
        oneHundredOneThousandThreeHund: "8/20/19".obs)
  ]);
}
