import 'controller/whatsapp_notifications_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/core/utils/validation_functions.dart';
import 'package:what_sapp/presentation/whatsapp_notifications_page/whatsapp_notifications_page.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class WhatsappNotificationsTabContainerScreen
    extends GetWidget<WhatsappNotificationsTabContainerController> {
  WhatsappNotificationsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildNavigationBar(),
                Column(
                  children: [
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: CustomTextFormField(
                        controller: controller.descriptionController,
                        hintText: "msg_warning_push_notifications".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.phone,
                        validator: (value) {
                          if (!isValidPhone(value)) {
                            return "err_msg_please_enter_valid_phone_number".tr;
                          }
                          return null;
                        },
                        contentPadding: EdgeInsets.symmetric(horizontal: 23.h),
                        borderDecoration:
                            TextFormFieldStyleHelper.underLinePrimaryContainer,
                        filled: false,
                      ),
                    ),
                    SizedBox(height: 29.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_message_notifications".tr.toUpperCase(),
                          style: CustomTextStyles.bodySmallGray700,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildFortyOne(),
                    SizedBox(
                      height: 460.v,
                      child: TabBarView(
                        controller: controller.tabviewController,
                        children: [
                          WhatsappNotificationsPage(),
                          WhatsappNotificationsPage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.v),
      decoration: AppDecoration.outlineGray,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          CustomAppBar(
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
                    text: "lbl_settings".tr,
                    margin: EdgeInsets.only(top: 1.v),
                  ),
                  AppbarSubtitleThree(
                    text: "lbl_notifications".tr,
                    margin: EdgeInsets.only(left: 46.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyOne() {
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
                    "msg_show_notifications".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
                SizedBox(
                  height: 31.v,
                  width: 51.h,
                  child: TabBar(
                    controller: controller.tabviewController,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMask,
                          height: 31.v,
                          width: 51.h,
                        ),
                      ),
                      Tab(
                        child: SizedBox(
                          height: 31.v,
                          width: 51.h,
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgMask,
                                height: 31.v,
                                width: 51.h,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgKnob,
                                height: 27.adaptSize,
                                width: 27.adaptSize,
                                radius: BorderRadius.circular(
                                  13.5.adaptSize,
                                ),
                                alignment: Alignment.centerRight,
                                margin: EdgeInsets.only(right: 2.h),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            indent: 16.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
