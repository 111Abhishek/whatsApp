import 'package:flutter/material.dart';
import 'package:what_sapp/core/app_export.dart';

// ignore: must_be_immutable
class WhatsappchatseditItemWidget extends StatelessWidget {
  const WhatsappchatseditItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 9.v),
        decoration: AppDecoration.fillPrimary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgSelectIcon,
              height: 21.adaptSize,
              width: 21.adaptSize,
              margin: EdgeInsets.only(
                top: 17.v,
                bottom: 16.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgOval7,
              height: 52.adaptSize,
              width: 52.adaptSize,
              radius: BorderRadius.circular(
                26.h,
              ),
              margin: EdgeInsets.symmetric(vertical: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 7.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 240.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Martin Randolph",
                          style: theme.textTheme.titleMedium,
                        ),
                        Text(
                          "11/19/19",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.v),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRead,
                        height: 11.v,
                        width: 17.h,
                        margin: EdgeInsets.only(
                          top: 2.v,
                          bottom: 3.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Yes, 2pm is awesome",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
