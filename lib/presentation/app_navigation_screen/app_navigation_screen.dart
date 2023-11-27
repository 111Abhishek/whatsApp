import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Authorization".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappAuthorizationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Chats Edit".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappChatsEditScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Chat - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappChatContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Add Modal".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappAddModalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Contact Info".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappContactInfoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Edit Contact".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappEditContactScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Status".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.whatsappStatusScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Camera".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.whatsappCameraScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Status One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappStatusOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Calls - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappCallsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Settings Modal".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappSettingsModalScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Edit Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappEditProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Starred Messages".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappStarredMessagesScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Account".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.whatsappAccountScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Chats Settings".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappChatsSettingsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle:
                              "WhatsApp Notifications - Tab Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .whatsappNotificationsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "WhatsApp Data and Storage Usage".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.whatsappDataAndStorageUsageScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
