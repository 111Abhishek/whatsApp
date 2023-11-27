import 'controller/whatsapp_edit_contact_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WhatsappEditContactScreen
    extends GetWidget<WhatsappEditContactController> {
  const WhatsappEditContactScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 37.v),
          child: Column(
            children: [
              _buildEightyFive(),
              SizedBox(height: 5.v),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Text(
                  "lbl_delete_contact".tr,
                  style: CustomTextStyles.bodyLargeRed50001,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 41.v,
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitleOne(
              text: "lbl_cancel".tr,
            ),
            AppbarSubtitleThree(
              text: "lbl_edit_contact".tr,
              margin: EdgeInsets.only(left: 68.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "lbl_save".tr,
          margin: EdgeInsets.fromLTRB(16.h, 10.v, 16.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEightyFive() {
    return SizedBox(
      height: 250.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Text(
                "lbl_more_fields".tr,
                style: CustomTextStyles.bodyLargeLightblueA700_1,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              margin: EdgeInsets.only(bottom: 50.v),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 14.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_mobile".tr,
                      style: CustomTextStyles.bodyLargeLightblueA700_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 14.v,
                    width: 9.h,
                    margin: EdgeInsets.only(
                      left: 5.h,
                      top: 3.v,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 50.v),
            child: CustomTextFormField(
              width: 279.h,
              controller: controller.phoneNumberController,
              hintText: "lbl_1_202_555_0181".tr,
              alignment: Alignment.bottomRight,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(
                left: 96.h,
                top: 100.v,
                bottom: 100.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 14.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 1.v),
                    child: Text(
                      "lbl_new_zealand".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 14.v,
                    width: 9.h,
                    margin: EdgeInsets.only(
                      top: 2.v,
                      bottom: 4.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50.v),
            child: CustomTextFormField(
              width: 279.h,
              controller: controller.surnameFieldController,
              hintText: "lbl_craig".tr,
              textInputAction: TextInputAction.done,
              alignment: Alignment.topRight,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 279.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 14.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Text(
                "lbl_martha".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 15.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_name".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 79.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "lbl_phone".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 49.v),
              child: SizedBox(
                width: 263.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 99.v),
              child: SizedBox(
                width: 263.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 99.v),
              child: SizedBox(
                width: 263.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 49.v),
              child: SizedBox(
                width: 359.h,
                child: Divider(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
