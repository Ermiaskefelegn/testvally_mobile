import 'controller/k1_controller.dart';
import 'package:flutter/material.dart';
import 'package:testvalley/core/app_export.dart';
import 'package:testvalley/widgets/app_bar/appbar_leading_image.dart';
import 'package:testvalley/widgets/app_bar/appbar_title.dart';
import 'package:testvalley/widgets/app_bar/appbar_trailing_image.dart';
import 'package:testvalley/widgets/app_bar/custom_app_bar.dart';
import 'package:testvalley/widgets/custom_text_form_field.dart';

class K1Screen extends GetWidget<K1Controller> {
  const K1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 50.v, width: double.maxFinite),
                  Spacer()
                ])),
            bottomNavigationBar: _buildSendAMessagePrompt()));
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
  Widget _buildSendAMessagePrompt() {
    return Container(
        decoration: AppDecoration.fillGray900,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 4.h, right: 16.h),
                  decoration: AppDecoration.fillGray900,
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgPlus,
                        height: 40.adaptSize,
                        width: 40.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v)),
                    Expanded(
                        child: CustomTextFormField(
                            controller: controller.sendMessageController,
                            hintText: "lbl15".tr,
                            textInputAction: TextInputAction.done,
                            suffix: Container(
                                padding: EdgeInsets.all(7.h),
                                margin:
                                    EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                                decoration: BoxDecoration(
                                    color: appTheme.gray800,
                                    borderRadius: BorderRadius.circular(12.h)),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgArrowrightGray90001,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize)),
                            suffixConstraints: BoxConstraints(maxHeight: 48.v)))
                  ])),
              Container(
                  height: 24.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(top: 8.v),
                  decoration: BoxDecoration(color: appTheme.gray900))
            ]));
  }

  /// Navigates to the previous screen.
  onTapBtconBack() {
    Get.back();
  }
}
