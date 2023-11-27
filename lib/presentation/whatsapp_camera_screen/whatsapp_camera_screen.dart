import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_elevated_button.dart';

class WhatsappCameraScreen extends StatelessWidget {
  const WhatsappCameraScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900,
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 666.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgCameraView,
                height: 666.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
              _buildGalleryIcon(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildHoldForVideotapForPhoto(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 73.v,
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCancelPrimary,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 37.v,
          bottom: 17.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLight,
          margin: EdgeInsets.fromLTRB(11.h, 34.v, 11.h, 11.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildGalleryIcon(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 11.h,
          right: 11.h,
          bottom: 8.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRecentImagesSwipe,
              height: 5.v,
              width: 37.h,
            ),
            SizedBox(height: 120.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGalleryIcon,
                  height: 27.v,
                  width: 33.h,
                  margin: EdgeInsets.only(
                    top: 22.v,
                    bottom: 19.v,
                  ),
                ),
                Container(
                  height: 69.adaptSize,
                  width: 69.adaptSize,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      34.h,
                    ),
                    border: Border.all(
                      color: appTheme.black900.withOpacity(0.2),
                      width: 1.h,
                      strokeAlign: strokeAlignOutside,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChangeCamera,
                  height: 30.v,
                  width: 35.h,
                  margin: EdgeInsets.symmetric(vertical: 19.v),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHoldForVideotapForPhoto(BuildContext context) {
    return CustomElevatedButton(
      height: 73.v,
      text: "Hold for video, tap for photo",
      buttonStyle: CustomButtonStyles.fillBlack,
      buttonTextStyle: CustomTextStyles.labelLargePrimaryMedium,
    );
  }
}
