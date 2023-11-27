import 'controller/whatsapp_data_and_storage_usage_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class WhatsappDataAndStorageUsageScreen
    extends GetWidget<WhatsappDataAndStorageUsageController> {
  const WhatsappDataAndStorageUsageScreen({Key? key})
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
                padding: EdgeInsets.symmetric(vertical: 29.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_media_auto_download".tr.toUpperCase(),
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    _buildOne(),
                    SizedBox(height: 7.v),
                    Container(
                      width: 323.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 35.h,
                      ),
                      child: Text(
                        "msg_voice_messages_are".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray700.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_call_settings".tr.toUpperCase(),
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    _buildRow6(),
                    SizedBox(height: 7.v),
                    Container(
                      width: 308.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 50.h,
                      ),
                      child: Text(
                        "msg_lower_the_amount".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray700.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
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
      padding: EdgeInsets.symmetric(vertical: 11.v),
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
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              AppbarSubtitleThree(
                text: "msg_data_and_storage".tr,
                margin: EdgeInsets.only(left: 8.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne() {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRow(
            audio: "lbl_photos".tr,
            wiFi: "msg_wi_fi_and_cellular".tr,
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            audio: "lbl_audio".tr,
            wiFi: "lbl_wi_fi".tr,
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            audio: "lbl_videos".tr,
            wiFi: "lbl_wi_fi".tr,
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            audio: "lbl_documents".tr,
            wiFi: "lbl_wi_fi".tr,
          ),
          Divider(
            indent: 16.h,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "msg_reset_auto_download".tr,
              style: CustomTextStyles.bodyLargeOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow6() {
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
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_low_data_usage".tr,
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
          _buildRow1(
            storageUsage: "lbl_network_usage".tr,
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow1(
            storageUsage: "lbl_storage_usage".tr,
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
    required String audio,
    required String wiFi,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            audio,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          Text(
            wiFi,
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

  /// Common widget
  Widget _buildRow1({required String storageUsage}) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              storageUsage,
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
