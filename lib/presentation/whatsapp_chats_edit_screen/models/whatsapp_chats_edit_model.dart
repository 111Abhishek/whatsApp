import '../../../core/app_export.dart';
import 'whatsappchatsedit_item_model.dart';

/// This class defines the variables used in the [whatsapp_chats_edit_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WhatsappChatsEditModel {
  Rx<List<WhatsappchatseditItemModel>> whatsappchatseditItemList = Rx([
    WhatsappchatseditItemModel(
        martinRandolph: ImageConstant.imgOval7.obs,
        martinRandolph1: "Martin Randolph".obs,
        oneHundredElevenThousandNineHu: "11/19/19".obs,
        yespmisawesome: ImageConstant.imgRead.obs,
        time: "Yes, 2pm is awesome".obs),
    WhatsappchatseditItemModel(
        martinRandolph: ImageConstant.imgOval52x52.obs,
        martinRandolph1: "Andrew Parker".obs,
        oneHundredElevenThousandNineHu: "11/16/19".obs,
        yespmisawesome: ImageConstant.imgRead.obs,
        time: "What kind of strategy is better?".obs),
    WhatsappchatseditItemModel(
        martinRandolph: ImageConstant.imgOval5.obs,
        martinRandolph1: "Karen Castillo".obs,
        oneHundredElevenThousandNineHu: "11/15/19".obs,
        yespmisawesome: ImageConstant.imgVoiceRecord.obs,
        time: "0:14".obs),
    WhatsappchatseditItemModel(
        martinRandolph: ImageConstant.imgOval.obs,
        martinRandolph1: "Maximillian Jacobson".obs,
        oneHundredElevenThousandNineHu: "10/30/19".obs,
        yespmisawesome: ImageConstant.imgRead.obs,
        time: "Bro, I have a good idea! ".obs),
    WhatsappchatseditItemModel(
        martinRandolph: ImageConstant.imgOval4.obs,
        martinRandolph1: "Martha Craig".obs,
        oneHundredElevenThousandNineHu: "10/28/19".obs,
        yespmisawesome: ImageConstant.imgPhotoIcon.obs,
        time: "Photo".obs),
    WhatsappchatseditItemModel(
        martinRandolph: ImageConstant.imgOval2.obs,
        martinRandolph1: "Tabitha Potter".obs,
        oneHundredElevenThousandNineHu: "8/25/19".obs),
    WhatsappchatseditItemModel(martinRandolph: ImageConstant.imgOval3.obs),
    WhatsappchatseditItemModel(
        martinRandolph: ImageConstant.imgOval1.obs,
        martinRandolph1: "Kieron Dotson".obs,
        oneHundredElevenThousandNineHu: "7/29/19".obs,
        yespmisawesome: ImageConstant.imgRead.obs,
        time: "Ok, have a good trip!".obs)
  ]);
}
