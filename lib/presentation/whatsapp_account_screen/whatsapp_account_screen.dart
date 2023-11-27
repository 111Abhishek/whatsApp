import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';

class WhatsappAccountScreen extends StatelessWidget {
  WhatsappAccountScreen({Key? key})
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
                    _buildRows(context),
                    SizedBox(height: 35.v),
                    _buildRows1(context),
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
                text: "Account",
                margin: EdgeInsets.only(left: 64.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRows(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRow(
            context,
            security: "Privacy",
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            context,
            security: "Security",
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            context,
            security: "Two-Step Verification",
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            context,
            security: "Change Number",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRows1(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRow(
            context,
            security: "Request Account Info",
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            context,
            security: "Delete My Account",
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

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String security,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              security,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 5.v,
              right: 1.h,
              bottom: 5.v,
            ),
          ),
        ],
      ),
    );
  }
}
