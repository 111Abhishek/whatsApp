import 'controller/whatsapp_authorization_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class WhatsappAuthorizationScreen
    extends GetWidget<WhatsappAuthorizationController> {
  const WhatsappAuthorizationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNavigationBar(),
              Container(
                padding: EdgeInsets.symmetric(vertical: 19.v),
                child: Column(
                  children: [
                    SizedBox(
                      width: 260.h,
                      child: Text(
                        "msg_please_confirm_your".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumBlack90015.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 17.v),
                    _buildForm(),
                    SizedBox(height: 5.v),
                  ],
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomAppBar(
            centerTitle: true,
            title: AppbarSubtitleThree(
              text: "lbl_phone_number".tr,
            ),
            actions: [
              AppbarSubtitleTwo(
                text: "lbl_done".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForm() {
    return SizedBox(
      height: 89.v,
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
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineOnPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 45.v),
                    child: Text(
                      "lbl_united_states".tr,
                      style: CustomTextStyles.bodyLargeLightblueA700,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                    height: 14.v,
                    width: 9.h,
                    margin: EdgeInsets.only(
                      top: 3.v,
                      right: 1.h,
                      bottom: 48.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 45.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                        horizontal: 29.h,
                        vertical: 4.v,
                      ),
                      decoration: AppDecoration.fillPrimary,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 1.v,
                              bottom: 2.v,
                            ),
                            child: Text(
                              "lbl_1".tr,
                              style: CustomTextStyles.headlineMediumBlack900,
                            ),
                          ),
                          Container(
                            height: 35.v,
                            width: 169.h,
                            margin: EdgeInsets.only(left: 41.h),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    "lbl_phone_number2".tr,
                                    style: theme.textTheme.headlineMedium,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 1.h),
                                    child: SizedBox(
                                      height: 34.v,
                                      child: VerticalDivider(
                                        width: 2.h,
                                        thickness: 2.v,
                                        color: appTheme.lightBlueA700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 86.h),
                      child: SizedBox(
                        height: 45.v,
                        child: VerticalDivider(
                          width: 1.h,
                          thickness: 1.v,
                        ),
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
}
