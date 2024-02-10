import 'controller/k0_controller.dart';
import 'package:flutter/material.dart';
import 'package:testvalley/core/app_export.dart';
import 'package:testvalley/widgets/app_bar/appbar_leading_image.dart';
import 'package:testvalley/widgets/app_bar/appbar_title.dart';
import 'package:testvalley/widgets/app_bar/appbar_trailing_image.dart';
import 'package:testvalley/widgets/app_bar/custom_app_bar.dart';
import 'package:testvalley/widgets/custom_elevated_button.dart';
import 'package:testvalley/widgets/custom_icon_button.dart';
import 'package:testvalley/widgets/custom_text_form_field.dart';

class K0Screen extends GetWidget<K0Controller> {
  K0Screen({Key? key}) : super(key: key);
  K0Controller controller = Get.put(K0Controller());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(16.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildIosMessengerRecipient1(),
                      SizedBox(height: 8.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 32.v),
                                child: CustomIconButton(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.all(5.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgClose))),
                            Container(
                                margin: EdgeInsets.only(left: 10.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 9.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderLR18),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text("lbl3".tr,
                                            style: theme.textTheme.bodyMedium),
                                        Container(
                                            height: 6.adaptSize,
                                            width: 6.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 8.h,
                                                top: 5.v,
                                                bottom: 5.v),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.h),
                                                gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.23, 0.06),
                                                    end: Alignment(0.58, 0.77),
                                                    colors: [
                                                      appTheme.black90001,
                                                      appTheme.blueGray900
                                                    ])))
                                      ]),
                                      SizedBox(height: 7.v),
                                      Text("lbl4".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 48.v),
                                child: Text("lbl_3".tr,
                                    style: theme.textTheme.bodySmall))
                          ]),
                      SizedBox(height: 8.v),
                      CustomElevatedButton(
                          width: 180.h,
                          text: "lbl5".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration:
                              CustomButtonStyles.gradientPinkAToPinkADecoration,
                          alignment: Alignment.centerRight),
                      SizedBox(height: 8.v),
                      Row(children: [
                        SizedBox(
                            width: 200.h,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgClose32x32,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      margin: EdgeInsets.only(bottom: 32.v)),
                                  Container(
                                      margin: EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.h, vertical: 9.v),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR18),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              Text("lbl2".tr,
                                                  style: theme
                                                      .textTheme.bodyMedium),
                                              Container(
                                                  height: 6.adaptSize,
                                                  width: 6.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 8.h,
                                                      top: 5.v,
                                                      bottom: 5.v),
                                                  decoration: BoxDecoration(
                                                      color: appTheme.tealA200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.h)))
                                            ]),
                                            SizedBox(height: 7.v),
                                            Text("lbl_t_c".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)
                                          ]))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h, top: 48.v),
                            child: Text("lbl_22".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(right: 90.h),
                          child: Row(children: [
                            Expanded(
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 32.v),
                                      child: CustomIconButton(
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          decoration: IconButtonStyleHelper
                                              .outlinePinkA,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgClose))),
                                  Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.h, vertical: 9.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderLR18),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(children: [
                                                  Text("lbl6".tr,
                                                      style: theme.textTheme
                                                          .bodyMedium),
                                                  Container(
                                                      height: 6.adaptSize,
                                                      width: 6.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 9.h,
                                                          top: 5.v,
                                                          bottom: 5.v),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3
                                                                      .h),
                                                          gradient:
                                                              LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          0.23,
                                                                          0.06),
                                                                  end:
                                                                      Alignment(
                                                                          0.58,
                                                                          0.77),
                                                                  colors: [
                                                                appTheme
                                                                    .black90001,
                                                                appTheme
                                                                    .blueGray900
                                                              ])))
                                                ]),
                                                SizedBox(height: 7.v),
                                                Text("msg2".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)
                                              ])))
                                ])),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 48.v),
                                child: Text("lbl_1".tr,
                                    style: theme.textTheme.bodySmall))
                          ])),
                      SizedBox(height: 8.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 32.v),
                                child: CustomIconButton(
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    padding: EdgeInsets.all(5.h),
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgClose))),
                            Container(
                                margin: EdgeInsets.only(left: 10.h),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.h, vertical: 9.v),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.customBorderLR18),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(children: [
                                        Text("lbl7".tr,
                                            style: theme.textTheme.bodyMedium),
                                        Container(
                                            height: 6.adaptSize,
                                            width: 6.adaptSize,
                                            margin: EdgeInsets.only(
                                                left: 8.h,
                                                top: 5.v,
                                                bottom: 5.v),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.h),
                                                gradient: LinearGradient(
                                                    begin:
                                                        Alignment(0.23, 0.06),
                                                    end: Alignment(0.58, 0.77),
                                                    colors: [
                                                      appTheme.black90001,
                                                      appTheme.blueGray900
                                                    ])))
                                      ]),
                                      SizedBox(height: 7.v),
                                      Text("lbl8".tr,
                                          style: theme.textTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 48.v),
                                child: Text("lbl_1".tr,
                                    style: theme.textTheme.bodySmall))
                          ]),
                      SizedBox(height: 8.v),
                      Row(children: [
                        SizedBox(
                            width: 210.h,
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgClose32x32,
                                      height: 32.adaptSize,
                                      width: 32.adaptSize,
                                      margin: EdgeInsets.only(bottom: 32.v)),
                                  Container(
                                      margin: EdgeInsets.only(left: 10.h),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 12.h, vertical: 9.v),
                                      decoration: AppDecoration.fillGray
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .customBorderLR18),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl9".tr,
                                                style:
                                                    theme.textTheme.bodyMedium),
                                            SizedBox(height: 7.v),
                                            Text("lbl10".tr,
                                                style:
                                                    theme.textTheme.bodyLarge)
                                          ]))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(left: 8.h, top: 48.v),
                            child: Text("lbl_1".tr,
                                style: theme.textTheme.bodySmall))
                      ]),
                      SizedBox(height: 8.v),
                      CustomElevatedButton(
                          width: 93.h,
                          text: "lbl11".tr,
                          buttonStyle: CustomButtonStyles.none,
                          decoration:
                              CustomButtonStyles.gradientPinkAToPinkADecoration,
                          alignment: Alignment.centerRight),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(right: 87.h),
                          child: Row(children: [
                            Expanded(
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 32.v),
                                      child: CustomIconButton(
                                          height: 32.adaptSize,
                                          width: 32.adaptSize,
                                          padding: EdgeInsets.all(5.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgClose))),
                                  Expanded(
                                      child: Container(
                                          margin: EdgeInsets.only(left: 10.h),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 12.h, vertical: 9.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderLR18),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(children: [
                                                  Text("lbl12".tr,
                                                      style: theme.textTheme
                                                          .bodyMedium),
                                                  Container(
                                                      height: 6.adaptSize,
                                                      width: 6.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 9.h,
                                                          top: 5.v,
                                                          bottom: 5.v),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(3
                                                                      .h),
                                                          gradient:
                                                              LinearGradient(
                                                                  begin:
                                                                      Alignment(
                                                                          0.23,
                                                                          0.06),
                                                                  end:
                                                                      Alignment(
                                                                          0.58,
                                                                          0.77),
                                                                  colors: [
                                                                appTheme
                                                                    .black90001,
                                                                appTheme
                                                                    .blueGray900
                                                              ])))
                                                ]),
                                                SizedBox(height: 7.v),
                                                Text("lbl13".tr,
                                                    style: theme
                                                        .textTheme.bodyLarge)
                                              ])))
                                ])),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h, top: 48.v),
                                child: Text("lbl_1".tr,
                                    style: theme.textTheme.bodySmall))
                          ])),
                      SizedBox(height: 5.v),
                    ])),
            _buildSendAMessagePrompt()
          ],
        ),
      ),
      // bottomNavigationBar:
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgBtconBack,
            margin: EdgeInsets.only(left: 20.h, top: 18.v, bottom: 18.v),
            onTap: () {
              onTapBtconBack();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgFrame5344,
              margin: EdgeInsets.symmetric(horizontal: 19.h, vertical: 18.v))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildIosMessengerRecipient1() {
    return Padding(
        padding: EdgeInsets.only(right: 23.h),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgClose32x32,
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.only(bottom: 51.v),
              onTap: () {
                onTapImgClose();
              }),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 10.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
                  decoration: AppDecoration.fillGray.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderLR18),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text("lbl2".tr, style: theme.textTheme.bodyMedium),
                          Container(
                              height: 6.adaptSize,
                              width: 6.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 8.h, top: 5.v, bottom: 5.v),
                              decoration: BoxDecoration(
                                  color: appTheme.tealA200,
                                  borderRadius: BorderRadius.circular(3.h)))
                        ]),
                        SizedBox(height: 6.v),
                        Container(
                            width: 227.h,
                            margin: EdgeInsets.only(right: 3.h),
                            child: Text("msg".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyLarge!
                                    .copyWith(height: 1.20)))
                      ]))),
          Padding(
              padding: EdgeInsets.only(left: 8.h, top: 67.v),
              child: Text("lbl_3".tr, style: theme.textTheme.bodySmall))
        ]));
  }

  /// Section Widget
  Widget _buildSendAMessagePrompt() {
    return Container(
        margin: EdgeInsets.only(top: 6.v),
        decoration: AppDecoration.fillGray900,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 12.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 8.v),
                  decoration: BoxDecoration(color: appTheme.gray900)),
              Container(
                  margin: EdgeInsets.only(left: 4.h, right: 16.h),
                  decoration: AppDecoration.fillGray900,
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPlus,
                        color: Colors.grey,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v)),
                    Expanded(
                        child: CustomTextFormField(
                            controller: controller.keyTwentyFiveController,
                            hintText: "lbl14".tr,
                            hintStyle: TextStyle(color: Colors.grey),
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                                padding: EdgeInsets.all(7.h),
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                                decoration: BoxDecoration(
                                    color: appTheme.pinkA400,
                                    borderRadius: BorderRadius.circular(12.h)),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgArrowright,
                                    color: Colors.white,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize)),
                            suffixConstraints: BoxConstraints(maxHeight: 48.v)))
                  ])),
              Container(
                  height: 12.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 8.v),
                  decoration: BoxDecoration(color: appTheme.gray900))
            ]));
  }

  /// Navigates to the previous screen.
  onTapBtconBack() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapImgClose() {
    Get.back();
  }
}
