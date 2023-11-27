import '../controller/whatsapp_chats_edit_controller.dart';
import '../models/whatsappchatsedit_item_model.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

// ignore: must_be_immutable
class WhatsappchatseditItemWidget extends StatelessWidget {
  WhatsappchatseditItemWidget(
    this.whatsappchatseditItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WhatsappchatseditItemModel whatsappchatseditItemModelObj;

  var controller = Get.find<WhatsappChatsEditController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 9.v),
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSelectIcon,
              height: 21.adaptSize,
              width: 21.adaptSize,
              margin: EdgeInsets.only(
                top: 17.v,
                bottom: 16.v,
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: whatsappchatseditItemModelObj.martinRandolph!.value,
                height: 52.adaptSize,
                width: 52.adaptSize,
                radius: BorderRadius.circular(
                  26.h,
                ),
                margin: EdgeInsets.symmetric(vertical: 1.v),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 7.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 240.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Text(
                            whatsappchatseditItemModelObj
                                .martinRandolph1!.value,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                        Obx(
                          () => Text(
                            whatsappchatseditItemModelObj
                                .oneHundredElevenThousandNineHu!.value,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => CustomImageView(
                          imagePath: whatsappchatseditItemModelObj
                              .yespmisawesome!.value,
                          height: 11.v,
                          width: 17.h,
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 3.v,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Obx(
                          () => Text(
                            whatsappchatseditItemModelObj.time!.value,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
