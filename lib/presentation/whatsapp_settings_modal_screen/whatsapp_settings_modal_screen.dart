import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_elevated_button.dart';
import 'package:what_sapp/widgets/custom_icon_button.dart';

class WhatsappSettingsModalScreen extends StatelessWidget {
  WhatsappSettingsModalScreen({Key? key})
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
          height: 685.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 31.v),
                  child: Text(
                    "WhatsApp from Facebook",
                    style: CustomTextStyles.bodySmallBluegray40012,
                  ),
                ),
              ),
              _buildOval(context),
              _buildRows(context),
              _buildRows1(context),
              _buildRows2(context),
              CustomElevatedButton(
                height: 44.v,
                width: double.maxFinite,
                text: "Settings",
                buttonStyle: CustomButtonStyles.outlineGray,
                buttonTextStyle: CustomTextStyles.titleMedium17,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.h,
                    vertical: 44.v,
                  ),
                  decoration: AppDecoration.fillBlack,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      _buildActions(context),
                      SizedBox(height: 8.v),
                      CustomElevatedButton(
                        text: "Cancel",
                      ),
                    ],
                  ),
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
  Widget _buildOval(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 44.v,
          bottom: 565.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.outlineOnPrimary1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgOval258x58,
              height: 58.adaptSize,
              width: 58.adaptSize,
              radius: BorderRadius.circular(
                29.h,
              ),
              margin: EdgeInsets.only(bottom: 2.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
                bottom: 9.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sabohiddin",
                    style: CustomTextStyles.titleLargeSFProTextBlack900,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "Digital goodies designer - Pixsellz",
                    style: CustomTextStyles.bodyLargeOnPrimary_1,
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRightOnprimary12x7,
              height: 12.v,
              width: 7.h,
              margin: EdgeInsets.only(
                top: 24.v,
                right: 1.h,
                bottom: 24.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRows(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 155.v),
        decoration: AppDecoration.outlineOnPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillAmber.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgIconPrimary29x29,
                      height: 19.adaptSize,
                      width: 19.adaptSize,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 6.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "Starred Messages",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                    height: 12.v,
                    width: 7.h,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      right: 2.h,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Divider(
                indent: 59.h,
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.fillTealA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShapePrimary,
                      height: 14.v,
                      width: 21.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 6.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "WhatsApp Web/Desktop",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                    height: 12.v,
                    width: 7.h,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      right: 2.h,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRows1(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 84.v),
        decoration: AppDecoration.outlineOnPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildRow(
              context,
              tellAFriend: "Help",
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Divider(
                indent: 59.h,
              ),
            ),
            _buildRow(
              context,
              tellAFriend: "Tell a Friend",
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRows2(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 213.v),
        decoration: AppDecoration.outlineOnPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.symmetric(
                      horizontal: 9.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.fillBlueA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShapePrimary19x10,
                      height: 19.v,
                      width: 10.h,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "Account",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                    height: 12.v,
                    width: 7.h,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      right: 2.h,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Divider(
                indent: 59.h,
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShapePrimary20x20,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "Chats",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                    height: 12.v,
                    width: 7.h,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      right: 2.h,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Divider(
                indent: 59.h,
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.all(4.h),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShapePrimary18x18,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      alignment: Alignment.topRight,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 5.v,
                      bottom: 5.v,
                    ),
                    child: Text(
                      "Notifications",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                    height: 12.v,
                    width: 7.h,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      right: 2.h,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Divider(
                indent: 59.h,
              ),
            ),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 29.adaptSize,
                    width: 29.adaptSize,
                    margin: EdgeInsets.only(bottom: 2.v),
                    padding: EdgeInsets.all(7.h),
                    decoration: AppDecoration.fillGreen.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgShapePrimary12x14,
                      height: 12.v,
                      width: 14.h,
                      alignment: Alignment.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15.h,
                      top: 6.v,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "Data and Storage Usage",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowRightOnprimary12x7,
                    height: 12.v,
                    width: 7.h,
                    margin: EdgeInsets.only(
                      top: 9.v,
                      right: 2.h,
                      bottom: 9.v,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 16.v),
          Text(
            "Mail",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 18.v),
          Text(
            "Message",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 13.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 16.v),
          Text(
            "More",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.gray400,
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
    required String tellAFriend,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: CustomIconButton(
              height: 29.adaptSize,
              width: 29.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillRedA,
              child: CustomImageView(
                imagePath: ImageConstant.imgShapePrimary13x14,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 5.v,
              bottom: 5.v,
            ),
            child: Text(
              tellAFriend,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.black900,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnprimary12x7,
            height: 12.v,
            width: 7.h,
            margin: EdgeInsets.only(
              top: 9.v,
              right: 2.h,
              bottom: 9.v,
            ),
          ),
        ],
      ),
    );
  }
}
