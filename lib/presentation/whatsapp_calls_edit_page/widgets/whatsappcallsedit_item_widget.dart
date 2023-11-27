import '../controller/whatsapp_calls_edit_controller.dart';
import '../models/whatsappcallsedit_item_model.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class WhatsappcallseditItemWidget extends StatelessWidget {
  WhatsappcallseditItemWidget(
    this.whatsappcallseditItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WhatsappcallseditItemModel whatsappcallseditItemModelObj;

  var controller = Get.find<WhatsappCallsEditController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            child: CustomIconButton(
              height: 21.adaptSize,
              width: 21.adaptSize,
              padding: EdgeInsets.all(4.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgRemoveIcon,
              ),
            ),
          ),
          Obx(
            () => CustomImageView(
              imagePath: whatsappcallseditItemModelObj.circleImage!.value,
              height: 40.adaptSize,
              width: 40.adaptSize,
              radius: BorderRadius.circular(
                20.h,
              ),
              margin: EdgeInsets.only(
                left: 9.h,
                top: 1.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    whatsappcallseditItemModelObj.martinRandolph!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCallIconGray50001,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Obx(
                        () => Text(
                          whatsappcallseditItemModelObj.outgoing!.value,
                          style: CustomTextStyles.bodyMedium_1,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              right: 3.h,
              bottom: 12.v,
            ),
            child: Obx(
              () => Text(
                whatsappcallseditItemModelObj
                    .oneHundredOneThousandThreeHund!.value,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
