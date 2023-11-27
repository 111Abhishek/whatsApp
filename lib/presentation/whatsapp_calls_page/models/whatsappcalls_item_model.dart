import '../../../core/app_export.dart';

/// This class is used in the [whatsappcalls_item_widget] screen.
class WhatsappcallsItemModel {
  WhatsappcallsItemModel({
    this.circleImage,
    this.martinRandolph,
    this.outgoing,
    this.oneHundredOneThousandThreeHund,
    this.id,
  }) {
    circleImage = circleImage ?? Rx(ImageConstant.imgOval40x40);
    martinRandolph = martinRandolph ?? Rx("Martin Randolph");
    outgoing = outgoing ?? Rx("outgoing");
    oneHundredOneThousandThreeHund =
        oneHundredOneThousandThreeHund ?? Rx("10/13/19");
    id = id ?? Rx("");
  }

  Rx<String>? circleImage;

  Rx<String>? martinRandolph;

  Rx<String>? outgoing;

  Rx<String>? oneHundredOneThousandThreeHund;

  Rx<String>? id;
}
