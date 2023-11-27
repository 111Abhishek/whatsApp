import 'controller/whatsapp_chat_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_chat_actions_page/whatsapp_chat_actions_page.dart';
import 'package:what_sapp/presentation/whatsapp_chat_page/whatsapp_chat_page.dart';
import 'package:what_sapp/presentation/whatsapp_chats_page/whatsapp_chats_page.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';

class WhatsappChatContainerScreen
    extends GetWidget<WhatsappChatContainerController> {
  const WhatsappChatContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.whatsappChatPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  Widget _buildBottomBar() {
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
