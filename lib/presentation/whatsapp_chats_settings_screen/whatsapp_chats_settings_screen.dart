import 'controller/whatsapp_chats_settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class WhatsappChatsSettingsScreen
    extends GetWidget<WhatsappChatsSettingsController> {
  const WhatsappChatsSettingsScreen({Key? key})
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
              _buildNavigationBar(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 35.v),
                child: Column(
                  children: [
                    _buildRow(
                      chatBackup: "msg_change_wallpaper".tr,
                    ),
                    SizedBox(height: 35.v),
                    _buildRow2(),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 324.h,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          right: 34.h,
                        ),
                        child: Text(
                          "msg_automatically_save".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray700.copyWith(
                            height: 1.33,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    _buildRow(
                      chatBackup: "lbl_chat_backup".tr,
                    ),
                    SizedBox(height: 35.v),
                    _buildRows(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.outlineGray,
      child: CustomAppBar(
        leadingWidth: 20.h,
        leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgBack,
          margin: EdgeInsets.only(left: 9.h),
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Row(
            children: [
              AppbarSubtitleOne(
                text: "lbl_settings".tr,
                margin: EdgeInsets.only(top: 1.v),
              ),
              AppbarSubtitleThree(
                text: "lbl_chats".tr,
                margin: EdgeInsets.only(left: 73.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow2() {
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
              "msg_save_to_camera_roll".tr,
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
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "msg_archive_all_chats".tr,
              style: CustomTextStyles.bodyLargeLightblueA700_1,
            ),
          ),
          Divider(
            indent: 16.h,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "lbl_clear_all_chats".tr,
              style: CustomTextStyles.bodyLargeRed50001,
            ),
          ),
          Divider(
            indent: 16.h,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "msg_delete_all_chats".tr,
              style: CustomTextStyles.bodyLargeRed50001,
            ),
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
  Widget _buildRow({required String chatBackup}) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              chatBackup,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 1.h,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }
}
