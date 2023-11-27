import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

// ignore: must_be_immutable
class WhatsappcallsItemWidget extends StatelessWidget {
  const WhatsappcallsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgOval40x40,
            height: 40.adaptSize,
            width: 40.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Martin Randolph",
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: 2.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCallIconBlueGray400,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(bottom: 2.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 6.h),
                      child: Text(
                        "outgoing",
                        style: CustomTextStyles.bodyMedium_1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 12.v,
            ),
            child: Text(
              "10/13/19",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgInfoIcon,
            height: 22.adaptSize,
            width: 22.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 10.v,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }
}
