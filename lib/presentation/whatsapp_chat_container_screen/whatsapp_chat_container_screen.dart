import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_chat_actions_page/whatsapp_chat_actions_page.dart';
import 'package:what_sapp/presentation/whatsapp_chat_page/whatsapp_chat_page.dart';
import 'package:what_sapp/presentation/whatsapp_chats_page/whatsapp_chats_page.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class WhatsappChatContainerScreen extends StatelessWidget {
  WhatsappChatContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.whatsappChatPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.whatsappChatPage:
        return WhatsappChatPage();
      case AppRoutes.whatsappChatsPage:
        return WhatsappChatsPage();
      case AppRoutes.whatsappChatActionsPage:
        return WhatsappChatActionsPage();
      default:
        return WhatsappChatPage();
    }
  }
}
