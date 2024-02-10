// import 'package:sendbird_sdk/sendbird_sdk.dart';

import 'dart:math';

import 'package:testvalley/core/app_export.dart';
import 'package:testvalley/presentation/k0_screen/models/k0_model.dart';
import 'package:flutter/material.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';

/// A controller class for the K0Screen.
///
/// This class manages the state of the K0Screen, including the
/// current k0ModelObj
class K0Controller extends GetxController {
  TextEditingController keyTwentyFiveController = TextEditingController();

  Rx<K0Model> k0ModelObj = K0Model().obs;
  late OpenChannelListQuery query;
  OpenChannel? openChannel;
  late PreviousMessageListQuery qquery;
  String channelUrl = "".obs();

  String title = ''.obs();
  bool hasPrevious = false.obs();
  List<BaseMessage> messageList = <BaseMessage>[].obs;
  int? participantCount = 1.obs();

  @override
  void onInit() async {
    super.onInit();

    try {
      SendbirdChat.init(
        appId: "BC823AD1-FBEA-4F08-8F41-CF0D9D280FBF",
        options: SendbirdChatOptions(
          useMemberInfoInMessage: true,
        ),
      );

      final user = await SendbirdChat.connect("ek43546jehhhhhrrymeron",
          accessToken: "f93b05ff359245af400aa805bafd2a091a173064",
          nickname: "ermias");
      print(user.nickname);
      Random random = Random();
      int randomFourDigitNumber = 1000 + random.nextInt(9000);
      final mychannel = await OpenChannel.createChannel(
        OpenChannelCreateParams()
          ..name = "chhhanel$randomFourDigitNumber"
          ..operatorUserIds = [SendbirdChat.currentUser!.userId],
      );
      channelUrl = mychannel.channelUrl;
      print(channelUrl);
      OpenChannel.getChannel(channelUrl).then((openChannel) {
        this.openChannel = openChannel;
        openChannel.enter().then((_) => _initialize());
      });
      print("dadda" + title);
    } catch (e) {
      print(e);
    }
  }

  void _initialize() {
    OpenChannel.getChannel("channelUrl").then((openChannel) {
      qquery = PreviousMessageListQuery(
        channelType: ChannelType.open,
        channelUrl: channelUrl,
      )..next().then((messages) {
          messageList
            ..clear()
            ..addAll(messages);
          title = '${openChannel.name} (${messageList.length})';
          hasPrevious = query.hasNext;
          participantCount = openChannel.participantCount;
        });
    });
  }

  @override
  void onClose() {
    super.onClose();
    keyTwentyFiveController.dispose();
  }
}
