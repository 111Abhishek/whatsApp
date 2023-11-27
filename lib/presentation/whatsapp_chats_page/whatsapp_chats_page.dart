import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class WhatsappChatsPage extends StatelessWidget {
  const WhatsappChatsPage({Key? key})
      : super(
          key: key,
        );

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
              _buildNavigationBar(context),
              Column(
                children: [
                  _buildActions(context),
                  SizedBox(
                    height: 592.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.h,
                                  vertical: 13.v,
                                ),
                                decoration: AppDecoration.fillGray,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 11.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgMoreIcon,
                                      height: 6.v,
                                      width: 25.h,
                                    ),
                                    SizedBox(height: 12.v),
                                    Text(
                                      "More",
                                      style: CustomTextStyles.bodyMediumPrimary,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.h,
                                  vertical: 13.v,
                                ),
                                decoration: AppDecoration.fillIndigo,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 3.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgArchiveIcon,
                                      height: 21.adaptSize,
                                      width: 21.adaptSize,
                                    ),
                                    SizedBox(height: 4.v),
                                    Text(
                                      "Archive",
                                      style: CustomTextStyles.bodyMediumPrimary,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 222.v,
                            bottom: 296.v,
                          ),
                          child: _buildOval(
                            context,
                            andrewParker: "Maximillian Jacobson",
                            oneHundredElevenThousandSixHun: "10/30/19",
                            whatKindOfStrateg: "Bro, I have a good idea! ",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 74.v,
                            bottom: 444.v,
                          ),
                          child: _buildOval(
                            context,
                            andrewParker: "Andrew Parker",
                            oneHundredElevenThousandSixHun: "11/16/19",
                            whatKindOfStrateg:
                                "What kind of strategy is better?",
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 518.v),
                          child: _buildOval(
                            context,
                            andrewParker: "Kieron Dotson",
                            oneHundredElevenThousandSixHun: "7/29/19",
                            whatKindOfStrateg: "Ok, have a good trip!",
                          ),
                        ),
                        _buildOval4(context),
                        _buildOval5(context),
                        _buildOval6(context),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 9.v),
                            decoration: AppDecoration.fillPrimary,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Martin Randolph",
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 81.h),
                                      child: Text(
                                        "11/19/19",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 1.v),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 9.v),
                                      child: Text(
                                        "Yes, 2pm is awesome",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowRightOnprimary,
                                      height: 12.v,
                                      width: 7.h,
                                      margin: EdgeInsets.only(
                                        left: 108.h,
                                        bottom: 13.v,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8.v),
                              ],
                            ),
                          ),
                        ),
                        _buildOval7(context),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 73.v),
                            child: SizedBox(
                              width: 296.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 147.v),
                            child: SizedBox(
                              width: 296.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                            padding: EdgeInsets.only(top: 221.v),
                            child: SizedBox(
                              width: 296.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            width: 296.h,
                            child: Divider(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 222.v),
                            child: SizedBox(
                              width: 296.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 148.v),
                            child: SizedBox(
                              width: 296.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 74.v),
                            child: SizedBox(
                              width: 296.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 296.h,
                            child: Divider(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  _buildSeperator(context),
                ],
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
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineGray,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomAppBar(
            height: 23.v,
            title: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Row(
                children: [
                  AppbarSubtitleOne(
                    text: "Edit",
                  ),
                  AppbarSubtitleThree(
                    text: "Chats",
                    margin: EdgeInsets.only(left: 117.h),
                  ),
                ],
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgEditIcon,
                margin: EdgeInsets.symmetric(horizontal: 15.h),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineOnPrimary1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.v),
            child: Text(
              "Broadcast Lists",
              style: CustomTextStyles.bodyLargeLightblueA70017,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "New Group",
              style: CustomTextStyles.bodyLargeLightblueA70017,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOval4(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 370.v,
          bottom: 148.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 3.v,
        ),
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgOval2,
              height: 52.adaptSize,
              width: 52.adaptSize,
              radius: BorderRadius.circular(
                26.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 7.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 3.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 17.h),
                      child: _buildTabithaPotter(
                        context,
                        tabithaPotter: "Tabitha Potter",
                        eightyTwoThousandFiveHundredNi: "8/25/19",
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 259.h,
                            child: Text(
                              "Actually I wanted to check with you about your online business plan on our…",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightOnprimary,
                          height: 12.v,
                          width: 7.h,
                          margin: EdgeInsets.only(
                            left: 10.h,
                            top: 2.v,
                            bottom: 27.v,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOval5(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 444.v,
          bottom: 74.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgOval3,
              height: 52.adaptSize,
              width: 52.adaptSize,
              radius: BorderRadius.circular(
                26.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 5.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 17.h),
                      child: _buildTabithaPotter(
                        context,
                        tabithaPotter: "Maisy Humphrey",
                        eightyTwoThousandFiveHundredNi: "8/20/19",
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 1.h),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRead,
                                      height: 11.v,
                                      width: 17.h,
                                      margin: EdgeInsets.only(
                                        top: 2.v,
                                        bottom: 3.v,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        "Welcome, to make design process",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.v),
                              SizedBox(
                                width: 139.h,
                                child: Text(
                                  "     \nfaster, look at Pixsellz",
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    height: 1.50,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightOnprimary,
                          height: 12.v,
                          width: 7.h,
                          margin: EdgeInsets.only(
                            left: 28.h,
                            bottom: 25.v,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOval6(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 296.v,
          bottom: 222.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgOval4,
              height: 52.adaptSize,
              width: 52.adaptSize,
              radius: BorderRadius.circular(
                26.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 1.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 17.h),
                      child: _buildTabithaPotter(
                        context,
                        tabithaPotter: "Martha Craig",
                        eightyTwoThousandFiveHundredNi: "10/28/19",
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPhotoIcon,
                          height: 11.v,
                          width: 14.h,
                          margin: EdgeInsets.only(
                            top: 12.v,
                            bottom: 2.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            top: 8.v,
                          ),
                          child: Text(
                            "Photo",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightOnprimary,
                          height: 12.v,
                          width: 7.h,
                          margin: EdgeInsets.only(bottom: 13.v),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOval7(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 148.v,
          bottom: 370.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 8.v,
        ),
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgOval5,
              height: 52.adaptSize,
              width: 52.adaptSize,
              radius: BorderRadius.circular(
                26.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 3.v),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  bottom: 9.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 17.h),
                      child: _buildTabithaPotter(
                        context,
                        tabithaPotter: "Karen Castillo",
                        eightyTwoThousandFiveHundredNi: "11/15/19",
                      ),
                    ),
                    SizedBox(height: 3.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVoiceRecord,
                          height: 15.v,
                          width: 9.h,
                          margin: EdgeInsets.only(top: 10.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 5.h,
                            top: 8.v,
                          ),
                          child: Text(
                            "0:14",
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightOnprimary,
                          height: 12.v,
                          width: 7.h,
                          margin: EdgeInsets.only(bottom: 13.v),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeperator(BuildContext context) {
    return SizedBox(
      height: 83.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 13.v),
              child: SizedBox(
                width: 296.h,
                child: Divider(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.outlineGray500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      bottom: 29.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIcon,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                        ),
                        SizedBox(height: 3.v),
                        Text(
                          "Status",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 27,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 29.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconPrimarycontainer,
                          height: 24.v,
                          width: 23.h,
                        ),
                        SizedBox(height: 5.v),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Calls",
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 29.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconPrimarycontainer22x26,
                          height: 22.v,
                          width: 26.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Camera",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 23,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 29.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgShape,
                          height: 20.v,
                          width: 31.h,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Chats",
                          style: CustomTextStyles.labelMediumLightblueA700,
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 23,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 28.v),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconPrimarycontainer25x25,
                          height: 25.adaptSize,
                          width: 25.adaptSize,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "Settings",
                          style: theme.textTheme.labelMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildOval(
    BuildContext context, {
    required String andrewParker,
    required String oneHundredElevenThousandSixHun,
    required String whatKindOfStrateg,
  }) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval52x52,
            height: 52.adaptSize,
            width: 52.adaptSize,
            radius: BorderRadius.circular(
              26.h,
            ),
            margin: EdgeInsets.symmetric(vertical: 2.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 8.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 17.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          andrewParker,
                          style: theme.textTheme.titleMedium!.copyWith(
                            color: appTheme.black900,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            oneHundredElevenThousandSixHun,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: appTheme.blueGray400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRead,
                        height: 11.v,
                        width: 17.h,
                        margin: EdgeInsets.only(
                          top: 11.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 2.h,
                          top: 9.v,
                        ),
                        child: Text(
                          whatKindOfStrateg,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: appTheme.blueGray400,
                          ),
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowRightOnprimary,
                        height: 12.v,
                        width: 7.h,
                        margin: EdgeInsets.only(bottom: 14.v),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTabithaPotter(
    BuildContext context, {
    required String tabithaPotter,
    required String eightyTwoThousandFiveHundredNi,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          tabithaPotter,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            eightyTwoThousandFiveHundredNi,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.blueGray400,
            ),
          ),
        ),
      ],
    );
  }
}
