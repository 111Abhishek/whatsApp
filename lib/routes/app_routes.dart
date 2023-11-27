import 'package:flutter/material.dart';
import 'package:what_sapp/presentation/whatsapp_authorization_screen/whatsapp_authorization_screen.dart';
import 'package:what_sapp/presentation/whatsapp_chats_edit_screen/whatsapp_chats_edit_screen.dart';
import 'package:what_sapp/presentation/whatsapp_chat_container_screen/whatsapp_chat_container_screen.dart';
import 'package:what_sapp/presentation/whatsapp_add_modal_screen/whatsapp_add_modal_screen.dart';
import 'package:what_sapp/presentation/whatsapp_contact_info_screen/whatsapp_contact_info_screen.dart';
import 'package:what_sapp/presentation/whatsapp_edit_contact_screen/whatsapp_edit_contact_screen.dart';
import 'package:what_sapp/presentation/whatsapp_status_screen/whatsapp_status_screen.dart';
import 'package:what_sapp/presentation/whatsapp_camera_screen/whatsapp_camera_screen.dart';
import 'package:what_sapp/presentation/whatsapp_status_one_screen/whatsapp_status_one_screen.dart';
import 'package:what_sapp/presentation/whatsapp_calls_tab_container_screen/whatsapp_calls_tab_container_screen.dart';
import 'package:what_sapp/presentation/whatsapp_settings_screen/whatsapp_settings_screen.dart';
import 'package:what_sapp/presentation/whatsapp_settings_modal_screen/whatsapp_settings_modal_screen.dart';
import 'package:what_sapp/presentation/whatsapp_edit_profile_screen/whatsapp_edit_profile_screen.dart';
import 'package:what_sapp/presentation/whatsapp_starred_messages_screen/whatsapp_starred_messages_screen.dart';
import 'package:what_sapp/presentation/whatsapp_account_screen/whatsapp_account_screen.dart';
import 'package:what_sapp/presentation/whatsapp_chats_settings_screen/whatsapp_chats_settings_screen.dart';
import 'package:what_sapp/presentation/whatsapp_notifications_tab_container_screen/whatsapp_notifications_tab_container_screen.dart';
import 'package:what_sapp/presentation/whatsapp_data_and_storage_usage_screen/whatsapp_data_and_storage_usage_screen.dart';
import 'package:what_sapp/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String whatsappAuthorizationScreen =
      '/whatsapp_authorization_screen';

  static const String whatsappChatsPage = '/whatsapp_chats_page';

  static const String whatsappChatsEditScreen = '/whatsapp_chats_edit_screen';

  static const String whatsappChatActionsPage = '/whatsapp_chat_actions_page';

  static const String whatsappChatPage = '/whatsapp_chat_page';

  static const String whatsappChatContainerScreen =
      '/whatsapp_chat_container_screen';

  static const String whatsappAddModalScreen = '/whatsapp_add_modal_screen';

  static const String whatsappContactInfoScreen =
      '/whatsapp_contact_info_screen';

  static const String whatsappEditContactScreen =
      '/whatsapp_edit_contact_screen';

  static const String whatsappStatusScreen = '/whatsapp_status_screen';

  static const String whatsappCameraScreen = '/whatsapp_camera_screen';

  static const String whatsappStatusOneScreen = '/whatsapp_status_one_screen';

  static const String whatsappCallsPage = '/whatsapp_calls_page';

  static const String whatsappCallsTabContainerScreen =
      '/whatsapp_calls_tab_container_screen';

  static const String whatsappCallsEditPage = '/whatsapp_calls_edit_page';

  static const String whatsappSettingsScreen = '/whatsapp_settings_screen';

  static const String whatsappSettingsModalScreen =
      '/whatsapp_settings_modal_screen';

  static const String whatsappEditProfileScreen =
      '/whatsapp_edit_profile_screen';

  static const String whatsappStarredMessagesScreen =
      '/whatsapp_starred_messages_screen';

  static const String whatsappAccountScreen = '/whatsapp_account_screen';

  static const String whatsappChatsSettingsScreen =
      '/whatsapp_chats_settings_screen';

  static const String whatsappNotificationsPage =
      '/whatsapp_notifications_page';

  static const String whatsappNotificationsTabContainerScreen =
      '/whatsapp_notifications_tab_container_screen';

  static const String whatsappDataAndStorageUsageScreen =
      '/whatsapp_data_and_storage_usage_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    whatsappAuthorizationScreen: (context) => WhatsappAuthorizationScreen(),
    whatsappChatsEditScreen: (context) => WhatsappChatsEditScreen(),
    whatsappChatContainerScreen: (context) => WhatsappChatContainerScreen(),
    whatsappAddModalScreen: (context) => WhatsappAddModalScreen(),
    whatsappContactInfoScreen: (context) => WhatsappContactInfoScreen(),
    whatsappEditContactScreen: (context) => WhatsappEditContactScreen(),
    whatsappStatusScreen: (context) => WhatsappStatusScreen(),
    whatsappCameraScreen: (context) => WhatsappCameraScreen(),
    whatsappStatusOneScreen: (context) => WhatsappStatusOneScreen(),
    whatsappCallsTabContainerScreen: (context) =>
        WhatsappCallsTabContainerScreen(),
    whatsappSettingsScreen: (context) => WhatsappSettingsScreen(),
    whatsappSettingsModalScreen: (context) => WhatsappSettingsModalScreen(),
    whatsappEditProfileScreen: (context) => WhatsappEditProfileScreen(),
    whatsappStarredMessagesScreen: (context) => WhatsappStarredMessagesScreen(),
    whatsappAccountScreen: (context) => WhatsappAccountScreen(),
    whatsappChatsSettingsScreen: (context) => WhatsappChatsSettingsScreen(),
    whatsappNotificationsTabContainerScreen: (context) =>
        WhatsappNotificationsTabContainerScreen(),
    whatsappDataAndStorageUsageScreen: (context) =>
        WhatsappDataAndStorageUsageScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
