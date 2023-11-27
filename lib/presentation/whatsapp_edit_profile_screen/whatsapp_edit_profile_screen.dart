import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_text_form_field.dart';

class WhatsappEditProfileScreen extends StatelessWidget {
  WhatsappEditProfileScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController seventyFourController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              _buildNavigationBar(context),
              Column(
                children: [
                  _buildEditName(context),
                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Phone number".toUpperCase(),
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  CustomTextFormField(
                    controller: seventyFourController,
                    hintText: "+998 90 943 32 00",
                    textInputAction: TextInputAction.done,
                    borderDecoration: TextFormFieldStyleHelper.outlineOnPrimary,
                  ),
                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "About".toUpperCase(),
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  _buildForty(context),
                  SizedBox(height: 5.v),
                ],
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
                text: "Settings",
                margin: EdgeInsets.only(top: 1.v),
              ),
              AppbarSubtitleThree(
                text: "Edit Profile",
                margin: EdgeInsets.only(left: 53.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditName(BuildContext context) {
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
                      "Enter your name and add an optional profile picture",
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
              "Edit",
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
                      "Sabohiddin",
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
  Widget _buildForty(BuildContext context) {
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
          "Digital goodies designer - Pixsellz",
          style: theme.textTheme.bodyLarge,
        ),
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
