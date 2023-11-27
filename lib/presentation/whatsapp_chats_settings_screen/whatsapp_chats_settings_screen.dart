import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_switch.dart';

class WhatsappChatsSettingsScreen extends StatelessWidget {
  WhatsappChatsSettingsScreen({Key? key})
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
                padding: EdgeInsets.symmetric(vertical: 35.v),
                child: Column(
                  children: [
                    _buildRow(
                      context,
                      chatBackup: "Change Wallpaper",
                    ),
                    SizedBox(height: 35.v),
                    _buildRow2(context),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 324.h,
                        margin: EdgeInsets.only(
                          left: 16.h,
                          right: 34.h,
                        ),
                        child: Text(
                          "Automatically save photos and videos you receive to your iPhone’s Camera Roll.",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray700.copyWith(
                            height: 1.33,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    _buildRow(
                      context,
                      chatBackup: "Chat Backup",
                    ),
                    SizedBox(height: 35.v),
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
                text: "Chats",
                margin: EdgeInsets.only(left: 73.h),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRow2(BuildContext context) {
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
            padding: EdgeInsets.symmetric(vertical: 5.v),
            child: Text(
              "Save to Camera Roll",
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
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "Archive All Chats",
              style: CustomTextStyles.bodyLargeLightblueA700_1,
            ),
          ),
          Divider(
            indent: 16.h,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "Clear All Chats",
              style: CustomTextStyles.bodyLargeRed50001,
            ),
          ),
          Divider(
            indent: 16.h,
          ),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Text(
              "Delete All Chats",
              style: CustomTextStyles.bodyLargeRed50001,
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

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String chatBackup,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              chatBackup,
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
