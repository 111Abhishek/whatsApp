import 'controller/whatsapp_starred_messages_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class WhatsappStarredMessagesScreen
    extends GetWidget<WhatsappStarredMessagesController> {
  const WhatsappStarredMessagesScreen({Key? key})
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
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 2.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgOval132x132,
                      height: 132.adaptSize,
                      width: 132.adaptSize,
                      radius: BorderRadius.circular(
                        66.h,
                      ),
                    ),
                    SizedBox(height: 26.v),
                    Text(
                      "msg_no_starred_messages".tr,
                      style: CustomTextStyles.titleMediumOnPrimary,
                    ),
                    SizedBox(height: 10.v),
                    SizedBox(
                      width: 327.h,
                      child: Text(
                        "msg_tap_and_hold_on".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumOnPrimary.copyWith(
                          height: 1.50,
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
                text: "msg_starred_messages".tr,
                margin: EdgeInsets.only(left: 24.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
