import 'controller/whatsapp_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class WhatsappSettingsScreen extends GetWidget<WhatsappSettingsController> {
  const WhatsappSettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomElevatedButton(
                height: 44.v,
                text: "lbl_settings".tr,
                buttonStyle: CustomButtonStyles.outlineGray,
                buttonTextStyle: CustomTextStyles.titleMedium17,
              ),
              _buildOval(),
              SizedBox(height: 35.v),
              _buildRows(),
              SizedBox(height: 35.v),
              _buildRows1(),
              SizedBox(height: 35.v),
              _buildRows2(),
              SizedBox(height: 37.v),
              Text(
                "msg_whatsapp_from_facebook".tr,
                style: CustomTextStyles.bodySmallBluegray40012,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildOval() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineOnPrimary1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval258x58,
            height: 58.adaptSize,
            width: 58.adaptSize,
            radius: BorderRadius.circular(
              29.h,
            ),
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
              bottom: 9.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_sabohiddin".tr,
                  style: CustomTextStyles.titleLargeSFProTextBlack900,
                ),
                SizedBox(height: 1.v),
                Text(
                  "msg_digital_goodies".tr,
                  style: CustomTextStyles.bodyLargeOnPrimary_1,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 24.v,
              right: 1.h,
              bottom: 24.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRows() {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillAmber.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconPrimary29x29,
                    height: 19.adaptSize,
                    width: 19.adaptSize,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "msg_starred_messages".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                  height: 12.v,
                  width: 7.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 2.h,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              indent: 59.h,
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.h,
                    vertical: 7.v,
                  ),
                  decoration: AppDecoration.fillTealA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgShapePrimary,
                    height: 14.v,
                    width: 21.h,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "msg_whatsapp_web_desktop".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                  height: 12.v,
                  width: 7.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 2.h,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRows1() {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 9.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgShapePrimary19x10,
                    height: 19.v,
                    width: 10.h,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_account".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                  height: 12.v,
                  width: 7.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 2.h,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              indent: 59.h,
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.fillGreen.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgShapePrimary20x20,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_chats".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                  height: 12.v,
                  width: 7.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 2.h,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              indent: 59.h,
            ),
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  padding: EdgeInsets.all(4.h),
                  decoration: AppDecoration.fillRed.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgShapePrimary18x18,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    alignment: Alignment.topRight,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_notifications".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                  height: 12.v,
                  width: 7.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 2.h,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              indent: 59.h,
            ),
          ),
          _buildRow(
            shape: ImageConstant.imgShapePrimary12x14,
            tellAFriend: "msg_data_and_storage".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRows2() {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 6.v,
                  ),
                  decoration: AppDecoration.fillBlue.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgShapePrimary14x5,
                    height: 14.v,
                    width: 5.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 6.v,
                    bottom: 4.v,
                  ),
                  child: Text(
                    "lbl_help".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                  height: 12.v,
                  width: 7.h,
                  margin: EdgeInsets.only(
                    top: 9.v,
                    right: 2.h,
                    bottom: 9.v,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              indent: 59.h,
            ),
          ),
          _buildRow(
            shape: ImageConstant.imgShapePrimary13x14,
            tellAFriend: "lbl_tell_a_friend".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildRow({
    required String shape,
    required String tellAFriend,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 29.adaptSize,
            width: 29.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
            padding: EdgeInsets.symmetric(
              horizontal: 7.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.fillRedA400.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: CustomImageView(
              imagePath: shape,
              height: 13.v,
              width: 14.h,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              tellAFriend,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 9.v,
              right: 2.h,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }
}
