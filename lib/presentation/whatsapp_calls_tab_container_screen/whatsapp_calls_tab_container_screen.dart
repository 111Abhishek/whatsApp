import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/presentation/whatsapp_calls_edit_page/whatsapp_calls_edit_page.dart';
import 'package:what_sapp/widgets/app_bar/appbar_title.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';

class WhatsappCallsTabContainerScreen extends StatefulWidget {
  const WhatsappCallsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  WhatsappCallsTabContainerScreenState createState() =>
      WhatsappCallsTabContainerScreenState();
}

class WhatsappCallsTabContainerScreenState
    extends State<WhatsappCallsTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 732.v,
          child: TabBarView(
            controller: tabviewController,
            children: [
              WhatsappCallsEditPage(),
              WhatsappCallsEditPage(),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 36.v,
      title: Container(
        margin: EdgeInsets.only(left: 16.h),
        decoration: AppDecoration.outlineGray,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarTitle(
              text: "Edit",
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
                controller: tabviewController,
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
                        "All",
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
                        "Missed",
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
