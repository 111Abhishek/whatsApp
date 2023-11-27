import '../whatsapp_chats_edit_screen/widgets/whatsappchatsedit_item_widget.dart';
import 'controller/whatsapp_chats_edit_controller.dart';
import 'models/whatsappchatsedit_item_model.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WhatsappChatsEditScreen extends GetWidget<WhatsappChatsEditController> {
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
              _buildNavigationBar(),
              _buildActions(),
              SizedBox(
                height: 628.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    _buildWhatsAppChatsEdit(),
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
                    _buildChatActions(),
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
  Widget _buildNavigationBar() {
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
            "lbl_done".tr,
            style: CustomTextStyles.titleMediumLightblueA70017,
          ),
          SizedBox(height: 15.v),
          Text(
            "lbl_chats".tr,
            style: theme.textTheme.displaySmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActions() {
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
              "lbl_broadcast_lists".tr,
              style: CustomTextStyles.bodyLargeGray40001,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: Text(
              "lbl_new_group".tr,
              style: CustomTextStyles.bodyLargeGray40001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatsAppChatsEdit() {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: 36.v),
        child: Obx(
          () => ListView.separated(
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
            itemCount: controller.whatsappChatsEditModelObj.value
                .whatsappchatseditItemList.value.length,
            itemBuilder: (context, index) {
              WhatsappchatseditItemModel model = controller
                  .whatsappChatsEditModelObj
                  .value
                  .whatsappchatseditItemList
                  .value[index];
              return WhatsappchatseditItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChatActions() {
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
                "lbl_archive".tr,
                style: CustomTextStyles.bodyLargeGray40001,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: Text(
                "lbl_read_all".tr,
                style: CustomTextStyles.bodyLargeGray40001,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 29.v),
              child: Text(
                "lbl_delete".tr,
                style: CustomTextStyles.bodyLargeGray40001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
