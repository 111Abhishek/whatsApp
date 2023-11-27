import 'controller/whatsapp_notifications_controller.dart';
import 'models/whatsapp_notifications_model.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/custom_switch.dart';

class WhatsappNotificationsPage extends StatelessWidget {
  WhatsappNotificationsPage({Key? key})
      : super(
          key: key,
        );

  WhatsappNotificationsController controller = Get.put(
      WhatsappNotificationsController(WhatsappNotificationsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              _buildRow(
                sound: "lbl_sound".tr,
                note: "lbl_note".tr,
              ),
              SizedBox(height: 31.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_group_notifications".tr.toUpperCase(),
                    style: CustomTextStyles.bodySmallGray700,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              _buildFortyTwo(),
              SizedBox(height: 35.v),
              _buildInAppNotifications(),
              SizedBox(height: 35.v),
              _buildRow3(),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "msg_preview_message".tr,
                    style: CustomTextStyles.bodySmallGray700,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              _buildRows(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyTwo() {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.v),
                  child: Text(
                    "msg_show_notifications".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Obx(
                  () => CustomSwitch(
                    value: controller.isSelectedSwitch.value,
                    onChange: (value) {
                      controller.isSelectedSwitch.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            sound: "lbl_sound".tr,
            note: "lbl_note".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInAppNotifications() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "msg_in_app_notifications".tr,
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 3.v),
              Text(
                "msg_banners_sounds".tr,
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 13.v,
              right: 1.h,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow3() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Text(
              "lbl_show_preview".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Obx(
            () => CustomSwitch(
              value: controller.isSelectedSwitch1.value,
              onChange: (value) {
                controller.isSelectedSwitch1.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRows() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "msg_reset_notification".tr,
            style: CustomTextStyles.bodyLargeRed50001,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRow({
    required String sound,
    required String note,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            sound,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          Text(
            note,
            style: CustomTextStyles.bodyLargeOnPrimary_2.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.6),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.fromLTRB(12.h, 4.v, 1.h, 4.v),
          ),
        ],
      ),
    );
  }
}
