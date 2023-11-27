import '../whatsapp_calls_page/widgets/whatsappcalls_item_widget.dart';
import 'controller/whatsapp_calls_controller.dart';
import 'models/whatsapp_calls_model.dart';
import 'models/whatsappcalls_item_model.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

class WhatsappCallsPage extends StatelessWidget {
  WhatsappCallsPage({Key? key})
      : super(
          key: key,
        );

  WhatsappCallsController controller =
      Get.put(WhatsappCallsController(WhatsappCallsModel().obs));

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
              CustomImageView(
                imagePath: ImageConstant.imgCallIcon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 16.h),
              ),
              SizedBox(height: 10.v),
              _buildWhatsAppCalls(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatsAppCalls() {
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
              width: 307.h,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: theme.colorScheme.onPrimary.withOpacity(0.29),
              ),
            ),
          );
        },
        itemCount: controller
            .whatsappCallsModelObj.value.whatsappcallsItemList.value.length,
        itemBuilder: (context, index) {
          WhatsappcallsItemModel model = controller
              .whatsappCallsModelObj.value.whatsappcallsItemList.value[index];
          return WhatsappcallsItemWidget(
            model,
          );
        },
      ),
    );
  }
}
