import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_text_form_field.dart';

class WhatsappEditContactScreen extends StatelessWidget {
  WhatsappEditContactScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController surnameFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 37.v),
          child: Column(
            children: [
              _buildEightyFive(context),
              SizedBox(height: 5.v),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.fillPrimary,
                child: Text(
                  "Delete Contact",
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 41.v,
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitleOne(
              text: "Cancel",
            ),
            AppbarSubtitleThree(
              text: "Edit Contact",
              margin: EdgeInsets.only(left: 68.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarSubtitleTwo(
          text: "Save",
          margin: EdgeInsets.fromLTRB(16.h, 10.v, 16.h, 9.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEightyFive(BuildContext context) {
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
                "more fields",
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
                      "mobile",
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
              controller: phoneNumberController,
              hintText: "+1 202 555 0181",
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
                      "New Zealand",
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
              controller: surnameFieldController,
              hintText: "Craig",
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
                "Martha",
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
                    "Name",
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 79.v),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Phone",
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
