import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_elevated_button.dart';
import 'package:what_sapp/widgets/custom_icon_button.dart';

class WhatsappStatusScreen extends StatelessWidget {
  WhatsappStatusScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNavigationBar(context),
              Container(
                padding: EdgeInsets.symmetric(vertical: 35.v),
                child: Column(
                  children: [
                    _buildOvalTwo(context),
                    SizedBox(height: 35.v),
                    CustomElevatedButton(
                      height: 43.v,
                      text: "No recent updates to show right now.",
                      buttonStyle: CustomButtonStyles.outlineOnPrimary,
                      buttonTextStyle: theme.textTheme.bodyMedium!,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.outlineGray,
      child: CustomAppBar(
        height: 22.v,
        title: Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Row(
            children: [
              AppbarSubtitleOne(
                text: "Privacy",
                margin: EdgeInsets.only(top: 1.v),
              ),
              AppbarSubtitleThree(
                text: "Status",
                margin: EdgeInsets.only(
                  left: 88.h,
                  bottom: 1.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOvalTwo(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 58.adaptSize,
            width: 58.adaptSize,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgOval258x58,
                  height: 58.adaptSize,
                  width: 58.adaptSize,
                  radius: BorderRadius.circular(
                    29.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomIconButton(
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  decoration: IconButtonStyleHelper.fillLightBlueA,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAddNewPhoto,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 10.v,
              bottom: 7.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Status",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 3.v),
                Text(
                  "Add to my status",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 11.v),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillIndigo,
              child: CustomImageView(
                imagePath: ImageConstant.imgCameraLightBlueA700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16.h, 11.v, 3.h, 11.v),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(9.h),
              decoration: IconButtonStyleHelper.fillIndigo,
              child: CustomImageView(
                imagePath: ImageConstant.imgEdit,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
