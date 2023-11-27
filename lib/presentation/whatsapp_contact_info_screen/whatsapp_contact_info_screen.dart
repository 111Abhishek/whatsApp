import 'controller/whatsapp_contact_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class WhatsappContactInfoScreen
    extends GetWidget<WhatsappContactInfoController> {
  const WhatsappContactInfoScreen({Key? key})
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle375x375,
                        height: 375.adaptSize,
                        width: 375.adaptSize,
                      ),
                      _buildInfoAndActions(),
                      SizedBox(height: 19.v),
                      _buildRows(),
                      SizedBox(height: 19.v),
                      _buildThirtyEight(),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(
                          indent: 59.h,
                        ),
                      ),
                      _buildSearch(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
                text: "lbl_martha_craig".tr,
                margin: EdgeInsets.only(top: 1.v),
              ),
              AppbarSubtitleThree(
                text: "lbl_contact_info".tr,
                margin: EdgeInsets.only(left: 12.h),
              ),
            ],
          ),
        ),
        actions: [
          AppbarSubtitle(
            text: "lbl_edit".tr,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInfoAndActions() {
    return SizedBox(
      height: 126.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlineOnPrimary1,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 67.v),
                  Text(
                    "msg_design_adds_value".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "lbl_dec_18_2018".tr,
                    style: CustomTextStyles.bodySmallBluegray40012,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(bottom: 60.v),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_martha_craig".tr,
                          style: CustomTextStyles.titleMediumMedium,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "lbl_1_202_555_0181".tr,
                          style: CustomTextStyles.bodySmallBluegray400,
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 3.v),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(9.h),
                      decoration: IconButtonStyleHelper.fillIndigo,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgWrite,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      decoration: IconButtonStyleHelper.fillIndigo,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVideoCallLightBlueA700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 3.v,
                      bottom: 3.v,
                    ),
                    child: CustomIconButton(
                      height: 36.adaptSize,
                      width: 36.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.fillIndigo,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCallLightBlueA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 359.h,
              child: Divider(),
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
          _buildRow(
            starredMessages: "msg_media_links_and".tr,
            none: "lbl_12".tr,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              indent: 59.h,
            ),
          ),
          _buildRow(
            starredMessages: "msg_starred_messages".tr,
            none: "lbl_none".tr,
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
                  padding: EdgeInsets.all(6.h),
                  decoration: AppDecoration.fillOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSearch,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 15.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  child: Text(
                    "lbl_chat_search".tr,
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
  Widget _buildThirtyEight() {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRow(
            starredMessages: "lbl_mute".tr,
            none: "lbl_no".tr,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              indent: 59.h,
            ),
          ),
          _buildRow(
            starredMessages: "lbl_custom_tone".tr,
            none: "lbl_default_note".tr,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Divider(
              indent: 59.h,
            ),
          ),
          _buildRow(
            starredMessages: "msg_save_to_camera_roll".tr,
            none: "lbl_default".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearch() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 29.adaptSize,
            width: 29.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 13.v),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomIconButton(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillOrange,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSearch,
                  ),
                ),
                CustomIconButton(
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  padding: EdgeInsets.all(5.h),
                  decoration: IconButtonStyleHelper.fillBlue,
                  alignment: Alignment.center,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIcon3,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 15.h,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_encryption".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Container(
                          width: 260.h,
                          margin: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "msg_messages_to_this".tr,
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallBluegray400_1
                                .copyWith(
                              height: 1.27,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                        height: 12.v,
                        width: 7.h,
                        margin: EdgeInsets.only(
                          left: 32.h,
                          bottom: 18.v,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRow({
    required String starredMessages,
    required String none,
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
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: CustomIconButton(
              height: 29.adaptSize,
              width: 29.adaptSize,
              padding: EdgeInsets.all(4.h),
              decoration: IconButtonStyleHelper.fillAmber,
              child: CustomImageView(
                imagePath: ImageConstant.imgIconPrimary29x29,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Text(
              starredMessages,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Text(
              none,
              style: CustomTextStyles.bodyLargeOnPrimary_2.copyWith(
                color: theme.colorScheme.onPrimary.withOpacity(0.6),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.fromLTRB(12.h, 9.v, 2.h, 9.v),
          ),
        ],
      ),
    );
  }
}
