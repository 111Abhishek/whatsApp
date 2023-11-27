import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';

class WhatsappStatusOneScreen extends StatelessWidget {
  const WhatsappStatusOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.redA100,
        appBar: _buildAppBar(context),
        body: Container(
          height: 711.v,
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 155.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Text(
                    "Type a status",
                    style: CustomTextStyles
                        .displaySmallHelveticaNeueOnPrimaryContainer,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 48.v,
                  child: VerticalDivider(
                    width: 2.h,
                    thickness: 2.v,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 56.v,
      leadingWidth: 38.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCancel,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 19.v,
          bottom: 17.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgText,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPalete,
          margin: EdgeInsets.only(
            left: 29.h,
            top: 16.v,
            right: 34.h,
          ),
        ),
      ],
    );
  }
}
