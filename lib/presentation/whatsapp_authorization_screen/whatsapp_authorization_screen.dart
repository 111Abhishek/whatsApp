import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';

class WhatsappAuthorizationScreen extends StatelessWidget {
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
              _buildNavigationBar(context),
              Container(
                padding: EdgeInsets.symmetric(vertical: 19.v),
                child: Column(
                  children: [
                    SizedBox(
                      width: 260.h,
                      child: Text(
                        "Please confirm your country code and enter your phone number ",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.bodyMediumBlack90015.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 17.v),
                    _buildForm(context),
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
  Widget _buildNavigationBar(BuildContext context) {
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
              text: "Phone number",
            ),
            actions: [
              AppbarSubtitleTwo(
                text: "Done",
                margin: EdgeInsets.symmetric(horizontal: 16.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildForm(BuildContext context) {
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
                      "United States",
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
                              "+1",
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
                                    "phone number",
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
