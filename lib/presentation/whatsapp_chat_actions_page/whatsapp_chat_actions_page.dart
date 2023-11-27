import 'controller/whatsapp_chat_actions_controller.dart';
import 'models/whatsapp_chat_actions_model.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_elevated_button.dart';

class WhatsappChatActionsPage extends StatelessWidget {
  WhatsappChatActionsPage({Key? key})
      : super(
          key: key,
        );

  WhatsappChatActionsController controller =
      Get.put(WhatsappChatActionsController(WhatsappChatActionsModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: SizedBox(
            height: 685.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 88.v),
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
                                "lbl_more".tr,
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
                                "lbl_archive".tr,
                                style: CustomTextStyles.bodyMediumPrimary,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 310.v,
                    bottom: 384.v,
                  ),
                  child: _buildOval(
                    andrewParker: "msg_maximillian_jacobson".tr,
                    oneHundredElevenThousandSixHun: "lbl_10_30_19".tr,
                    whatKindOfStrateg: "msg_bro_i_have_a_good".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 162.v,
                    bottom: 532.v,
                  ),
                  child: _buildOval(
                    andrewParker: "lbl_andrew_parker".tr,
                    oneHundredElevenThousandSixHun: "lbl_11_16_19".tr,
                    whatKindOfStrateg: "msg_what_kind_of_strategy".tr,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 606.v,
                    bottom: 88.v,
                  ),
                  child: _buildOval(
                    andrewParker: "lbl_kieron_dotson".tr,
                    oneHundredElevenThousandSixHun: "lbl_7_29_19".tr,
                    whatKindOfStrateg: "msg_ok_have_a_good".tr,
                  ),
                ),
                _buildOval4(),
                _buildOval5(),
                _buildOval6(),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(top: 88.v),
                    padding: EdgeInsets.symmetric(vertical: 9.v),
                    decoration: AppDecoration.fillPrimary,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "lbl_martin_randolph".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 81.h),
                              child: Text(
                                "lbl_11_19_19".tr,
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
                                "msg_yes_2pm_is_awesome".tr,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgArrowRightOnprimary,
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
                _buildOval7(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 680.v,
                    bottom: 14.v,
                  ),
                  child: _buildOval(
                    andrewParker: "lbl_joshua_lawrence".tr,
                    oneHundredElevenThousandSixHun: "lbl_10_20_19".tr,
                    whatKindOfStrateg: "msg_do_you_like_whatsapp".tr,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 161.v),
                    child: SizedBox(
                      width: 296.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 235.v),
                    child: SizedBox(
                      width: 296.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 309.v),
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
                    padding: EdgeInsets.only(bottom: 309.v),
                    child: SizedBox(
                      width: 296.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 235.v),
                    child: SizedBox(
                      width: 296.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 161.v),
                    child: SizedBox(
                      width: 296.h,
                      child: Divider(),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 87.v),
                    child: SizedBox(
                      width: 296.h,
                      child: Divider(),
                    ),
                  ),
                ),
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
                _buildActions(),
                _buildAppBar(),
                Align(
                  alignment: Alignment.center,
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
                        _buildActions1(),
                        SizedBox(height: 8.v),
                        CustomElevatedButton(
                          text: "lbl_cancel".tr,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOval4() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 458.v,
          bottom: 236.v,
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
                        tabithaPotter: "lbl_tabitha_potter".tr,
                        eightyTwoThousandFiveHundredNi: "lbl_8_25_19".tr,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: SizedBox(
                            width: 259.h,
                            child: Text(
                              "msg_actually_i_wanted".tr,
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
  Widget _buildOval5() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 532.v,
          bottom: 162.v,
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
                        tabithaPotter: "lbl_maisy_humphrey".tr,
                        eightyTwoThousandFiveHundredNi: "lbl_8_20_19".tr,
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
                                        "msg_welcome_to_make".tr,
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.v),
                              SizedBox(
                                width: 194.h,
                                child: Text(
                                  "msg_process_faster".tr,
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
  Widget _buildOval6() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 384.v,
          bottom: 310.v,
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
                        tabithaPotter: "lbl_martha_craig".tr,
                        eightyTwoThousandFiveHundredNi: "lbl_10_28_19".tr,
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
                            "lbl_photo".tr,
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
  Widget _buildOval7() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 236.v,
          bottom: 458.v,
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
              margin: EdgeInsets.symmetric(vertical: 2.v),
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
                        tabithaPotter: "lbl_karen_castillo".tr,
                        eightyTwoThousandFiveHundredNi: "lbl_11_15_19".tr,
                      ),
                    ),
                    SizedBox(height: 2.v),
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
                            "lbl_0_14".tr,
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
  Widget _buildActions() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 44.v,
          bottom: 680.v,
        ),
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
                "lbl_broadcast_lists".tr,
                style: CustomTextStyles.bodyLargeBluegray400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(
                "lbl_new_group".tr,
                style: CustomTextStyles.bodyLargeBluegray400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 44.v,
      title: Padding(
        padding: EdgeInsets.only(left: 16.h),
        child: Row(
          children: [
            AppbarSubtitleOne(
              text: "lbl_edit".tr,
            ),
            AppbarSubtitleThree(
              text: "lbl_chats".tr,
              margin: EdgeInsets.only(left: 117.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgEditIcon,
          margin: EdgeInsets.fromLTRB(15.h, 9.v, 15.h, 11.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildActions1() {
    return Container(
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 16.v),
          Text(
            "lbl_mute".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 15.v),
          Text(
            "lbl_contact_info".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 17.v),
          Text(
            "lbl_export_chat".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 16.v),
          Text(
            "lbl_clear_chat".tr,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 16.v),
          Text(
            "lbl_delete_chat".tr,
            style: CustomTextStyles.titleLargeRed50001,
          ),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.gray400,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildOval({
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
  Widget _buildTabithaPotter({
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
