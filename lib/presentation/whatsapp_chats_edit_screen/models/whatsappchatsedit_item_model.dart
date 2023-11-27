import '../../../core/app_export.dart';

/// This class is used in the [whatsappchatsedit_item_widget] screen.
class WhatsappchatseditItemModel {
  WhatsappchatseditItemModel({
    this.martinRandolph,
    this.martinRandolph1,
    this.oneHundredElevenThousandNineHu,
    this.yespmisawesome,
    this.time,
    this.id,
  }) {
    martinRandolph = martinRandolph ?? Rx(ImageConstant.imgOval7);
    martinRandolph1 = martinRandolph1 ?? Rx("Martin Randolph");
    oneHundredElevenThousandNineHu =
        oneHundredElevenThousandNineHu ?? Rx("11/19/19");
    yespmisawesome = yespmisawesome ?? Rx(ImageConstant.imgRead);
    time = time ?? Rx("Yes, 2pm is awesome");
    id = id ?? Rx("");
  }

  Rx<String>? martinRandolph;

  Rx<String>? martinRandolph1;

  Rx<String>? oneHundredElevenThousandNineHu;

  Rx<String>? yespmisawesome;

  Rx<String>? time;

  Rx<String>? id;
}
