import 'controller/whatsapp_calls_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_calls_edit_page/whatsapp_calls_edit_page.dart';
import 'package:what_sapp/widgets/app_bar/appbar_title.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class WhatsappCallsTabContainerScreen
    extends GetWidget<WhatsappCallsTabContainerController> {
  const WhatsappCallsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          height: 732.v,
          child: TabBarView(
            controller: controller.tabviewController,
            children: [
              WhatsappCallsEditPage(),
              WhatsappCallsEditPage(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 36.v,
      title: Container(
        margin: EdgeInsets.only(left: 16.h),
        decoration: AppDecoration.outlineGray,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarTitle(
              text: "lbl_edit".tr,
              margin: EdgeInsets.only(
                top: 2.v,
                bottom: 4.v,
              ),
            ),
            Container(
              height: 28.v,
              width: 151.h,
              margin: EdgeInsets.only(left: 66.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8.h,
                ),
                border: Border.all(
                  color: appTheme.lightBlueA700,
                  width: 1.h,
                ),
              ),
              child: TabBar(
                controller: controller.tabviewController,
                labelPadding: EdgeInsets.zero,
                labelColor: theme.colorScheme.primary,
                labelStyle: TextStyle(
                  fontSize: 13.fSize,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: appTheme.lightBlueA700,
                unselectedLabelStyle: TextStyle(
                  fontSize: 13.fSize,
                  fontFamily: 'SF Pro Text',
                  fontWeight: FontWeight.w500,
                ),
                indicator: BoxDecoration(
                  color: appTheme.lightBlueA700,
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(8.h),
                  ),
                ),
                tabs: [
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 7.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "lbl_all".tr,
                      ),
                    ),
                  ),
                  Tab(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 7.v,
                        bottom: 4.v,
                      ),
                      child: Text(
                        "lbl_missed2".tr,
                      ),
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
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
