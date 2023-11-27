import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
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
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Authorization",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappAuthorizationScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Chats Edit",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappChatsEditScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Chat - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappChatContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Add Modal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappAddModalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Contact Info",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappContactInfoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Edit Contact",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappEditContactScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Status",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappStatusScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Camera",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappCameraScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Status One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappStatusOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Calls - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.whatsappCallsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Settings Modal",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappSettingsModalScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Edit Profile",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappEditProfileScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Starred Messages",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappStarredMessagesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Account",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Chats Settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.whatsappChatsSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Notifications - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .whatsappNotificationsTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "WhatsApp Data and Storage Usage",
                          onTapScreenTitle: () => onTapScreenTitle(context,
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
  Widget _buildAppNavigation(BuildContext context) {
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
                "App Navigation",
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
                "Check your app's UI from the below demo screens of your app.",
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
  Widget _buildScreenTitle(
    BuildContext context, {
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
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
