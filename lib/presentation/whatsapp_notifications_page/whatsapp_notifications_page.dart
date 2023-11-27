import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class WhatsappNotificationsPage extends StatefulWidget {
  const WhatsappNotificationsPage({Key? key})
      : super(
          key: key,
        );

  @override
  WhatsappNotificationsPageState createState() =>
      WhatsappNotificationsPageState();
}

class WhatsappNotificationsPageState extends State<WhatsappNotificationsPage>
    with AutomaticKeepAliveClientMixin<WhatsappNotificationsPage> {
  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              _buildRow(
                context,
                sound: "Sound",
                note: "Note",
              ),
              SizedBox(height: 31.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Group notifications".toUpperCase(),
                    style: CustomTextStyles.bodySmallGray700,
                  ),
                ),
              ),
              SizedBox(height: 6.v),
              _buildFortyTwo(context),
              SizedBox(height: 35.v),
              _buildInAppNotifications(context),
              SizedBox(height: 35.v),
              _buildRow3(context),
              SizedBox(height: 8.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Preview message text inside new message notifications.",
                    style: CustomTextStyles.bodySmallGray700,
                  ),
                ),
              ),
              SizedBox(height: 22.v),
              _buildRows(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyTwo(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPrimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.v),
                  child: Text(
                    "Show Notifications",
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
          ),
          Divider(
            indent: 16.h,
          ),
          _buildRow(
            context,
            sound: "Sound",
            note: "Note",
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildInAppNotifications(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "In-App Notifications",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 3.v),
              Text(
                "Banners, Sounds, Vibrate",
                style: CustomTextStyles.bodySmallBlack900,
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 13.v,
              right: 1.h,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRow3(BuildContext context) {
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
              "Show Preview",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          CustomSwitch(
            value: isSelectedSwitch1,
            onChange: (value) {
              isSelectedSwitch1 = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRows(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineOnPrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "Reset Notification Settings",
            style: CustomTextStyles.bodyLargeRed50001,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String sound,
    required String note,
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
        children: [
          Text(
            sound,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: appTheme.black900,
            ),
          ),
          Spacer(),
          Text(
            note,
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
}
