import '../whatsapp_calls_edit_page/widgets/whatsappcallsedit_item_widget.dart';
import 'controller/whatsapp_calls_edit_controller.dart';
import 'models/whatsapp_calls_edit_model.dart';
import 'models/whatsappcallsedit_item_model.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

class WhatsappCallsEditPage extends StatelessWidget {
  WhatsappCallsEditPage({Key? key})
      : super(
          key: key,
        );

  WhatsappCallsEditController controller =
      Get.put(WhatsappCallsEditController(WhatsappCallsEditModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillBlueGray,
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: Text(
                    "lbl_clear".tr,
                    style: CustomTextStyles.bodyLargeLightblueA70017,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildWhatsAppCallsEdit(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatsAppCallsEdit() {
    return Obx(
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
              width: 276.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: theme.colorScheme.onPrimary.withOpacity(0.29),
              ),
            ),
          );
        },
        itemCount: controller.whatsappCallsEditModelObj.value
            .whatsappcallseditItemList.value.length,
        itemBuilder: (context, index) {
          WhatsappcallseditItemModel model = controller
              .whatsappCallsEditModelObj
              .value
              .whatsappcallseditItemList
              .value[index];
          return WhatsappcallseditItemWidget(
            model,
          );
        },
      ),
    );
  }
}
