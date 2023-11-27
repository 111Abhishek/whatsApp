import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_notifications_page/whatsapp_notifications_page.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_text_form_field.dart';

class WhatsappNotificationsTabContainerScreen extends StatefulWidget {
  const WhatsappNotificationsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WhatsappNotificationsTabContainerScreenState createState() =>
      WhatsappNotificationsTabContainerScreenState();
}

class WhatsappNotificationsTabContainerScreenState
    extends State<WhatsappNotificationsTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController descriptionController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

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
                _buildNavigationBar(context),
                Column(
                  children: [
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: CustomTextFormField(
                        controller: descriptionController,
                        hintText:
                            "WARNING: Push Notifications are disabled. To enable visit:\niPhone Settings > Notifications > WhatsApp",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.phone,
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
                          "Message notifications".toUpperCase(),
                          style: CustomTextStyles.bodySmallGray700,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    _buildFortyOne(context),
                    SizedBox(
                      height: 460.v,
                      child: TabBarView(
                        controller: tabviewController,
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
        bottomNavigationBar: _buildBottomBar(context),
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
                    text: "Notifications",
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
  Widget _buildFortyOne(BuildContext context) {
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
                SizedBox(
                  height: 31.v,
                  width: 51.h,
                  child: TabBar(
                    controller: tabviewController,
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
