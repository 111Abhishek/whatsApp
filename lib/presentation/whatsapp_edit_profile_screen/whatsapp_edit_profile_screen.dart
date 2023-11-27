import 'controller/whatsapp_edit_profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WhatsappEditProfileScreen
    extends GetWidget<WhatsappEditProfileController> {
  const WhatsappEditProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNavigationBar(),
              Column(
                children: [
                  _buildEditName(),
                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_phone_number".tr.toUpperCase(),
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  CustomTextFormField(
                    controller: controller.seventyFourController,
                    hintText: "msg_998_90_943_32_00".tr,
                    textInputAction: TextInputAction.done,
                    borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
                  ),
                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_about".tr.toUpperCase(),
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  _buildForty(),
                  SizedBox(height: 5.v),
                ],
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
                text: "lbl_edit_profile".tr,
                margin: EdgeInsets.only(left: 53.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditName() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.outlineOnPrimary1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 39.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 71.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval60x60,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 207.h,
                    margin: EdgeInsets.only(
                      left: 20.h,
                      top: 13.v,
                      bottom: 10.v,
                    ),
                    child: Text(
                      "msg_enter_your_name".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodySmallBluegray400.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 33.h),
            child: Text(
              "lbl_edit".tr,
              style: CustomTextStyles.bodyMediumLightblueA700,
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            height: 41.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 9.v,
                    ),
                    decoration: AppDecoration.fillPrimary,
                    child: Text(
                      "lbl_sabohiddin".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 359.h,
                    child: Divider(),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 359.h,
                    child: Divider(),
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
  Widget _buildForty() {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.fillPrimary,
        child: Text(
          "msg_digital_goodies".tr,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
