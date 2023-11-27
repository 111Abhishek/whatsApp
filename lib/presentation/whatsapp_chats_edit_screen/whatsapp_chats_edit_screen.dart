import '../whatsapp_chats_edit_screen/widgets/whatsappchatsedit_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

class WhatsappChatsEditScreen extends StatelessWidget {
  const WhatsappChatsEditScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNavigationBar(context),
              _buildActions(context),
              SizedBox(
                height: 628.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    _buildWhatsAppChatsEdit(context),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 13.v),
                        child: SizedBox(
                          width: 148.h,
                          child: Divider(),
                        ),
                      ),
                    ),
                    _buildChatActions(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Text(
            "Done",
            style: CustomTextStyles.titleMediumLightblueA70017,
          ),
          SizedBox(height: 15.v),
          Text(
            "Chats",
            style: theme.textTheme.displaySmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      width: double.maxFinite,
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
              "Broadcast Lists",
              style: CustomTextStyles.bodyLargeGray40001,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "New Group",
              style: CustomTextStyles.bodyLargeGray40001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatsAppChatsEdit(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 36.v),
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 0.5.v),
              child: SizedBox(
                width: 257.h,
                child: Divider(
                  height: 1.v,
                  thickness: 1.v,
                  color: theme.colorScheme.onPrimary.withOpacity(0.29),
                ),
              ),
            );
          },
          itemCount: 8,
          itemBuilder: (context, index) {
            return WhatsappchatseditItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChatActions(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: 545.v),
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineGray500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: Text(
                "Archive",
                style: CustomTextStyles.bodyLargeGray40001,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: Text(
                "Read All",
                style: CustomTextStyles.bodyLargeGray40001,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: Text(
                "Delete",
                style: CustomTextStyles.bodyLargeGray40001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
