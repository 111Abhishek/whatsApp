import '../whatsapp_calls_page/widgets/whatsappcalls_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WhatsappCallsPage extends StatefulWidget {
  const WhatsappCallsPage({Key? key})
      : super(
          key: key,
        );

  @override
  WhatsappCallsPageState createState() => WhatsappCallsPageState();
}

class WhatsappCallsPageState extends State<WhatsappCallsPage>
    with AutomaticKeepAliveClientMixin<WhatsappCallsPage> {
  @override
  bool get wantKeepAlive => true;
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
              _buildWhatsAppCalls(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatsAppCalls(BuildContext context) {
    return ListView.separated(
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
      itemCount: 12,
      itemBuilder: (context, index) {
        return WhatsappcallsItemWidget();
      },
    );
  }
}
