import '../whatsapp_calls_edit_page/widgets/whatsappcallsedit_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

// ignore_for_file: must_be_immutable
class WhatsappCallsEditPage extends StatefulWidget {
  const WhatsappCallsEditPage({Key? key})
      : super(
          key: key,
        );

  @override
  WhatsappCallsEditPageState createState() => WhatsappCallsEditPageState();
}

class WhatsappCallsEditPageState extends State<WhatsappCallsEditPage>
    with AutomaticKeepAliveClientMixin<WhatsappCallsEditPage> {
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
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 16.h),
                  child: Text(
                    "Clear",
                    style: CustomTextStyles.bodyLargeLightblueA70017,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              _buildWhatsAppCallsEdit(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhatsAppCallsEdit(BuildContext context) {
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
            width: 276.h,
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
        return WhatsappcallseditItemWidget();
      },
    );
  }
}
