import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:what_sapp/core/app_export.dart';
import 'package:what_sapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:what_sapp/widgets/app_bar/appbar_subtitle_seven.dart';
import 'package:what_sapp/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:what_sapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:what_sapp/widgets/app_bar/custom_app_bar.dart';
import 'package:what_sapp/widgets/custom_bottom_bar.dart';
import 'package:what_sapp/widgets/custom_elevated_button.dart';

class WhatsappAddModalScreen extends StatelessWidget {
  WhatsappAddModalScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle,
                height: 724.v,
                width: 375.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildAppBar(context),
                    SizedBox(
                      height: 768.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 7.h,
                                top: 49.v,
                                right: 7.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 34.v,
                                    width: 162.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgShadow,
                                          height: 33.v,
                                          width: 160.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 34.v,
                                            width: 162.h,
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgShapeLightGreen100,
                                                  height: 34.v,
                                                  width: 162.h,
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 2.v),
                                                          child: Text(
                                                            "Good bye!",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 17.h,
                                                            top: 8.v,
                                                          ),
                                                          child: Text(
                                                            "17:47",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgRead,
                                                          height: 8.v,
                                                          width: 13.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 2.h,
                                                            top: 11.v,
                                                            bottom: 2.v,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8.v),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 100.h,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 20.h,
                                        vertical: 2.v,
                                      ),
                                      decoration: AppDecoration.outlineBlueGray
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder8,
                                      ),
                                      child: Text(
                                        "Fri, Jul 26",
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 9.v),
                                  Container(
                                    height: 34.v,
                                    width: 187.h,
                                    margin: EdgeInsets.only(right: 9.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgShadowBlack900,
                                          height: 33.v,
                                          width: 185.h,
                                          radius: BorderRadius.circular(
                                            8.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 34.v,
                                            width: 187.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgShapeLightGreen10034x187,
                                                  height: 34.v,
                                                  width: 187.h,
                                                  radius: BorderRadius.circular(
                                                    8.h,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 2.v),
                                                        child: Text(
                                                          "Good morning!",
                                                          style: theme.textTheme
                                                              .bodyLarge,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 17.h,
                                                          top: 8.v,
                                                        ),
                                                        child: Text(
                                                          "10:10",
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRead,
                                                        height: 8.v,
                                                        width: 13.h,
                                                        margin: EdgeInsets.only(
                                                          left: 2.h,
                                                          top: 11.v,
                                                          bottom: 2.v,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    height: 34.v,
                                    width: 235.h,
                                    margin: EdgeInsets.only(right: 9.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgShadowBlack900,
                                          height: 33.v,
                                          width: 233.h,
                                          radius: BorderRadius.circular(
                                            8.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 34.v,
                                            width: 235.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgShapeLightGreen10034x187,
                                                  height: 34.v,
                                                  width: 235.h,
                                                  radius: BorderRadius.circular(
                                                    8.h,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 2.v),
                                                        child: Text(
                                                          "Japan looks amazing!",
                                                          style: theme.textTheme
                                                              .bodyLarge,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 17.h,
                                                          top: 8.v,
                                                        ),
                                                        child: Text(
                                                          "10:10",
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRead,
                                                        height: 8.v,
                                                        width: 13.h,
                                                        margin: EdgeInsets.only(
                                                          left: 2.h,
                                                          top: 11.v,
                                                          bottom: 2.v,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    height: 67.v,
                                    width: 156.h,
                                    margin: EdgeInsets.only(right: 8.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 66.v,
                                            width: 154.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.black900
                                                  .withOpacity(0.4),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                8.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: EdgeInsets.all(3.h),
                                            decoration: AppDecoration
                                                .fillLightGreen
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                _buildFile(
                                                  context,
                                                  iMG: "IMG_0475",
                                                ),
                                                SizedBox(height: 3.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Text(
                                                      "2.4",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900_1,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 1.h),
                                                      child: Text(
                                                        "MB",
                                                        style: CustomTextStyles
                                                            .bodySmallBlack900_1,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 2.adaptSize,
                                                      width: 2.adaptSize,
                                                      margin: EdgeInsets.only(
                                                        left: 5.h,
                                                        top: 6.v,
                                                        bottom: 5.v,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: appTheme.black900
                                                            .withOpacity(0.2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          1.h,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 3.h,
                                                        top: 2.v,
                                                      ),
                                                      child: Text(
                                                        "png",
                                                        style: CustomTextStyles
                                                            .bodySmallBlack900_1,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 27.h),
                                                      child: Text(
                                                        "10:15",
                                                        style: theme.textTheme
                                                            .bodySmall,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgRead,
                                                      height: 8.v,
                                                      width: 13.h,
                                                      margin: EdgeInsets.only(
                                                        left: 2.h,
                                                        top: 2.v,
                                                        bottom: 3.v,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 2.v),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                    height: 67.v,
                                    width: 165.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgShadow,
                                          height: 66.v,
                                          width: 163.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: EdgeInsets.all(3.h),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: fs.Svg(
                                                  ImageConstant
                                                      .imgShapeLightGreen100,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                _buildFile1(
                                                  context,
                                                  iMG: "IMG_0481",
                                                ),
                                                SizedBox(height: 3.v),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 5.h),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "2.8",
                                                        style: CustomTextStyles
                                                            .bodySmallBlack900_1,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h),
                                                        child: Text(
                                                          "MB",
                                                          style: CustomTextStyles
                                                              .bodySmallBlack900_1,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 2.adaptSize,
                                                        width: 2.adaptSize,
                                                        margin: EdgeInsets.only(
                                                          left: 5.h,
                                                          top: 6.v,
                                                          bottom: 5.v,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .black900
                                                              .withOpacity(0.2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            1.h,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 3.h,
                                                          top: 2.v,
                                                        ),
                                                        child: Text(
                                                          "png",
                                                          style: CustomTextStyles
                                                              .bodySmallBlack900_1,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 28.h),
                                                        child: Text(
                                                          "10:15",
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRead,
                                                        height: 8.v,
                                                        width: 13.h,
                                                        margin: EdgeInsets.only(
                                                          left: 2.h,
                                                          top: 2.v,
                                                          bottom: 3.v,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 2.v),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      height: 50.v,
                                      width: 234.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgShapeBlack900,
                                            height: 49.v,
                                            width: 232.h,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 50.v,
                                              width: 234.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgShapeGray50,
                                                    height: 50.v,
                                                    width: 234.h,
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 16.h,
                                                        right: 8.h,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "Do you know what time is it?",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge,
                                                          ),
                                                          SizedBox(height: 4.v),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Text(
                                                              "11:40",
                                                              style: theme
                                                                  .textTheme
                                                                  .bodySmall,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                    height: 34.v,
                                    width: 262.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgShadow,
                                          height: 33.v,
                                          width: 260.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 34.v,
                                            width: 262.h,
                                            child: Stack(
                                              alignment: Alignment.topLeft,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgShapeLightGreen100,
                                                  height: 34.v,
                                                  width: 262.h,
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 8.h),
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: 5.v,
                                                            bottom: 2.v,
                                                          ),
                                                          child: Text(
                                                            "It’s morning in Tokyo ",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant.img,
                                                          height: 19.v,
                                                          width: 16.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 4.h,
                                                            bottom: 8.v,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 22.h,
                                                            top: 13.v,
                                                          ),
                                                          child: Text(
                                                            "11:43",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgRead,
                                                          height: 8.v,
                                                          width: 13.h,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 2.h,
                                                            top: 16.v,
                                                            bottom: 2.v,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 3.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 50.v,
                                      width: 255.h,
                                      margin: EdgeInsets.only(left: 9.h),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Container(
                                              height: 49.v,
                                              width: 253.h,
                                              decoration: BoxDecoration(
                                                color: appTheme.black900
                                                    .withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  8.h,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              elevation: 0,
                                              margin: EdgeInsets.all(0),
                                              color: appTheme.gray50,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder8,
                                              ),
                                              child: Container(
                                                height: 50.v,
                                                width: 255.h,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 7.h,
                                                  vertical: 4.v,
                                                ),
                                                decoration: AppDecoration
                                                    .fillGray50
                                                    .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: SizedBox(
                                                        width: 237.h,
                                                        child: Text(
                                                          "What is the most popular meal in Japan?",
                                                          maxLines: 2,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          style: theme.textTheme
                                                              .bodyLarge,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          right: 1.h,
                                                          bottom: 1.v,
                                                        ),
                                                        child: Text(
                                                          "11:45",
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: SizedBox(
                                      height: 34.v,
                                      width: 171.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgShapeBlack900,
                                            height: 33.v,
                                            width: 169.h,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 34.v,
                                              width: 171.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgShapeGray50,
                                                    height: 34.v,
                                                    width: 171.h,
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 2.v),
                                                          child: Text(
                                                            "Do you like it?",
                                                            style: theme
                                                                .textTheme
                                                                .bodyLarge,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            left: 16.h,
                                                            top: 8.v,
                                                          ),
                                                          child: Text(
                                                            "11:45",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    height: 34.v,
                                    width: 213.h,
                                    margin: EdgeInsets.only(right: 9.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgShadowBlack900,
                                          height: 33.v,
                                          width: 211.h,
                                          radius: BorderRadius.circular(
                                            8.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            height: 34.v,
                                            width: 213.h,
                                            child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgShapeLightGreen10034x187,
                                                  height: 34.v,
                                                  width: 213.h,
                                                  radius: BorderRadius.circular(
                                                    8.h,
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                bottom: 2.v),
                                                        child: Text(
                                                          "I think top two are:",
                                                          style: theme.textTheme
                                                              .bodyLarge,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 17.h,
                                                          top: 8.v,
                                                        ),
                                                        child: Text(
                                                          "11:50",
                                                          style: theme.textTheme
                                                              .bodySmall,
                                                        ),
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRead,
                                                        height: 8.v,
                                                        width: 13.h,
                                                        margin: EdgeInsets.only(
                                                          left: 2.h,
                                                          top: 11.v,
                                                          bottom: 2.v,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  Container(
                                    height: 67.v,
                                    width: 156.h,
                                    margin: EdgeInsets.only(right: 8.h),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: 66.v,
                                            width: 154.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.black900
                                                  .withOpacity(0.4),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                8.h,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: EdgeInsets.all(3.h),
                                            decoration: AppDecoration
                                                .fillLightGreen
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                _buildFile(
                                                  context,
                                                  iMG: "IMG_0483",
                                                ),
                                                SizedBox(height: 3.v),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "2.8",
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900_1,
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 1.h),
                                                      child: Text(
                                                        "MB",
                                                        style: CustomTextStyles
                                                            .bodySmallBlack900_1,
                                                      ),
                                                    ),
                                                    Container(
                                                      height: 2.adaptSize,
                                                      width: 2.adaptSize,
                                                      margin: EdgeInsets.only(
                                                        left: 5.h,
                                                        top: 6.v,
                                                        bottom: 5.v,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: appTheme.black900
                                                            .withOpacity(0.2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          1.h,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 3.h),
                                                      child: Text(
                                                        "png",
                                                        style: CustomTextStyles
                                                            .bodySmallBlack900_1,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 29.h),
                                                      child: Text(
                                                        "11:51",
                                                        style: theme.textTheme
                                                            .bodySmall,
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath:
                                                          ImageConstant.imgRead,
                                                      height: 8.v,
                                                      width: 13.h,
                                                      margin: EdgeInsets.only(
                                                        left: 3.h,
                                                        top: 2.v,
                                                        bottom: 3.v,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 2.v),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 2.v),
                                  SizedBox(
                                    height: 67.v,
                                    width: 165.h,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgShadow,
                                          height: 66.v,
                                          width: 163.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            padding: EdgeInsets.all(3.h),
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: fs.Svg(
                                                  ImageConstant
                                                      .imgShapeLightGreen100,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                _buildFile1(
                                                  context,
                                                  iMG: "IMG_0484",
                                                ),
                                                SizedBox(height: 3.v),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 5.h,
                                                    right: 13.h,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Text(
                                                        "2.6",
                                                        style: CustomTextStyles
                                                            .bodySmallBlack900_1,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 1.h),
                                                        child: Text(
                                                          "MB",
                                                          style: CustomTextStyles
                                                              .bodySmallBlack900_1,
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 2.adaptSize,
                                                        width: 2.adaptSize,
                                                        margin: EdgeInsets.only(
                                                          left: 5.h,
                                                          top: 6.v,
                                                          bottom: 5.v,
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: appTheme
                                                              .black900
                                                              .withOpacity(0.2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            1.h,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 3.h),
                                                        child: Text(
                                                          "png",
                                                          style: CustomTextStyles
                                                              .bodySmallBlack900_1,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Text(
                                                        "11:51",
                                                        style: theme.textTheme
                                                            .bodySmall,
                                                      ),
                                                      CustomImageView(
                                                        imagePath: ImageConstant
                                                            .imgRead,
                                                        height: 8.v,
                                                        width: 13.h,
                                                        margin: EdgeInsets.only(
                                                          left: 3.h,
                                                          top: 2.v,
                                                          bottom: 3.v,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: 2.v),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: 34.v,
                              width: 236.h,
                              margin: EdgeInsets.only(
                                top: 13.v,
                                right: 17.h,
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgShadowBlack900,
                                    height: 33.v,
                                    width: 234.h,
                                    radius: BorderRadius.circular(
                                      8.h,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 34.v,
                                      width: 236.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgShapeLightGreen10034x187,
                                            height: 34.v,
                                            width: 236.h,
                                            radius: BorderRadius.circular(
                                              8.h,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 2.v),
                                                  child: Text(
                                                    "I will write from Japan",
                                                    style: theme
                                                        .textTheme.bodyLarge,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 17.h,
                                                    top: 8.v,
                                                  ),
                                                  child: Text(
                                                    "17:47",
                                                    style: theme
                                                        .textTheme.bodySmall,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgRead,
                                                  height: 8.v,
                                                  width: 13.h,
                                                  margin: EdgeInsets.only(
                                                    left: 2.h,
                                                    top: 11.v,
                                                    bottom: 2.v,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.h,
                                vertical: 45.v,
                              ),
                              decoration: AppDecoration.fillBlack,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  _buildActions(context),
                                  SizedBox(height: 8.v),
                                  CustomElevatedButton(
                                    text: "Cancel",
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
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
      height: 44.v,
      leadingWidth: 20.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(
          left: 9.h,
          top: 11.v,
          bottom: 12.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 42.h),
        child: Row(
          children: [
            AppbarTitleCircleimage(
              imagePath: ImageConstant.imgOval36x36,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 8.h,
                top: 1.v,
              ),
              child: Column(
                children: [
                  AppbarSubtitleFour(
                    text: "Martha Craig",
                    margin: EdgeInsets.only(right: 39.h),
                  ),
                  AppbarSubtitleSeven(
                    text: "tap here for contact info",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgVideoCall,
          margin: EdgeInsets.fromLTRB(19.h, 13.v, 13.h, 2.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCall,
          margin: EdgeInsets.only(
            left: 25.h,
            top: 9.v,
            right: 32.h,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          Container(
            margin: EdgeInsets.only(left: 21.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCamera,
                  height: 20.v,
                  width: 22.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 2.v,
                    bottom: 1.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "Camera",
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 17.v),
          Container(
            margin: EdgeInsets.only(left: 19.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconLightBlueA700,
                  height: 20.v,
                  width: 24.h,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                  margin: EdgeInsets.only(
                    top: 1.v,
                    bottom: 2.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "Photo & Video Library",
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 16.v),
          Container(
            margin: EdgeInsets.only(left: 23.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconLightBlueA70023x17,
                  height: 23.v,
                  width: 17.h,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 23.h),
                  child: Text(
                    "Document",
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 16.v),
          Container(
            margin: EdgeInsets.only(left: 21.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconLightBlueA70026x19,
                  height: 26.v,
                  width: 19.h,
                  radius: BorderRadius.circular(
                    9.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 22.h),
                  child: Text(
                    "Location",
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Divider(
            color: appTheme.gray400,
          ),
          SizedBox(height: 16.v),
          Container(
            margin: EdgeInsets.only(left: 20.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconLightBlueA70024x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  radius: BorderRadius.circular(
                    12.h,
                  ),
                  margin: EdgeInsets.only(top: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "Contact",
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Divider(
            color: appTheme.gray400,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

  /// Common widget
  Widget _buildFile(
    BuildContext context, {
    required String iMG,
  }) {
    return Container(
      padding: EdgeInsets.all(7.h),
      decoration: AppDecoration.fillGrayE.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFileIcon,
            height: 27.v,
            width: 22.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Text(
              iMG,
              style: CustomTextStyles.bodyLargeBlack900.copyWith(
                color: appTheme.black900.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFile1(
    BuildContext context, {
    required String iMG,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 7.v,
      ),
      decoration: AppDecoration.fillGrayE.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFileIcon,
            height: 27.v,
            width: 22.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 3.v,
              bottom: 3.v,
            ),
            child: Text(
              iMG,
              style: CustomTextStyles.bodyLargeBlack900.copyWith(
                color: appTheme.black900.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
