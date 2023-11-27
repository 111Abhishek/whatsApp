import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_switch.dart';

class WhatsappDataAndStorageUsageScreen extends StatelessWidget {
  WhatsappDataAndStorageUsageScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

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
                padding: EdgeInsets.symmetric(vertical: 29.v),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Media auto-download".toUpperCase(),
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    _buildOne(context),
                    SizedBox(height: 7.v),
                    Container(
                      width: 323.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 35.h,
                      ),
                      child: Text(
                        "Voice Messages are always automatically downloaded for the best communication experience.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray700.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "Call Settings".toUpperCase(),
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    _buildRow6(context),
                    SizedBox(height: 7.v),
                    Container(
                      width: 308.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 50.h,
                      ),
                      child: Text(
                        "Lower the amount of data used during a WhatsAoo call \non cellular.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray700.copyWith(
                          height: 1.33,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    _buildRows(context),
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
                text: "Settings",
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              AppbarSubtitleThree(
                text: "Data and Storage Usage",
                margin: EdgeInsets.only(left: 8.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildRow(
            context,
            audio: "Photos",
            wiFi: "Wi-Fi and Cellular",
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            context,
            audio: "Audio",
            wiFi: "Wi-Fi",
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            context,
            audio: "Videos",
            wiFi: "Wi-Fi",
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            context,
            audio: "Documents",
            wiFi: "Wi-Fi",
          ),
          Divider(
            indent: 16.h,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "Reset Auto-Download Settings",
              style: CustomTextStyles.bodyLargeOnPrimary,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow6(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.outlineOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 4.v,
            ),
            child: Text(
              "Low Data Usage",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          CustomSwitch(
            value: isSelectedSwitch,
            onChange: (value) {
              isSelectedSwitch = value;
            },
          ),
        ],
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
          _buildRow1(
            context,
            storageUsage: "Network Usage",
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow1(
            context,
            storageUsage: "Storage Usage",
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
    required String audio,
    required String wiFi,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            audio,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          Text(
            wiFi,
            style: CustomTextStyles.bodyLargeOnPrimary_2.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(0.6),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.fromLTRB(12.h, 4.v, 1.h, 4.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRow1(
    BuildContext context, {
    required String storageUsage,
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
              storageUsage,
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
