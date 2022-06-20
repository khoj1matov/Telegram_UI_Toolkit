import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';
import 'package:telegramuitoolkit/core/constants/font_const.dart';
import 'package:telegramuitoolkit/core/extensions/context_extensions.dart';
import 'package:telegramuitoolkit/core/widgets/telegram_text.dart';

class PrivacyAndSecurityView extends StatelessWidget {
  PrivacyAndSecurityView({Key? key}) : super(key: key);

  List<String> iconsList = [
    'assets/icons/privacyBlockUsers.svg',
    'assets/icons/privacyActive.svg',
    'assets/icons/privacyPasscode.svg',
    'assets/icons/privacyTwoStep.svg',
  ];
  List<String> textList = [
    'Blocked Users',
    'Active Sessions',
    'Passcode & Face ID',
    'Two-Step Verification',
  ];
  List<String> notList = [
    '9',
    '2',
    'Off',
    'On',
  ];

  List<String> privacyList = [
    'Phone Number',
    'Last Seen & Online',
    'Profile Photo',
    'Voice Calls',
    'Forwarded Messages',
    'Groups & Channels',
  ];

  List<String> privacyRightList = [
    'My Contacts',
    'Nobody (+14)',
    'Everybody',
    'Nobody (+7)',
    'Everybody',
    'Everybody',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.h * 0.28,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: SvgPicture.asset(iconsList[index].toString()),
                    title: TelegramText(
                      text: textList[index].toString().tr(),
                      color: Colors.black,
                      size: FontConst.kMediumFont,
                    ),
                    trailing: TelegramText(
                      text: notList[index].toString(),
                      size: FontConst.kMediumFont,
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: context.h * 0.02,
              left: context.w * 0.04,
              bottom: context.h * 0.01,
            ),
            child: TelegramText(
              text: 'PRIVACY',
              size: FontConst.kSmallFont,
              fontWeight: WeightConst.kSmallWeight,
              // textAlign: TextAlign.start,
            ),
          ),
          SizedBox(
            height: context.h * 0.32,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: TelegramText(
                        text: privacyList[index].toString().tr(),
                        color: Colors.black),
                    trailing: TelegramText(
                      text: privacyRightList[index].toString(),
                      textAlign: TextAlign.end,
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: context.h * 0.02,
              left: context.w * 0.04,
              bottom: context.h * 0.01,
            ),
            child: TelegramText(
              text: 'Change who can add you to groups and channels.',
              size: FontConst.kSmallFont,
              fontWeight: WeightConst.kSmallWeight,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: context.h * 0.02,
              left: context.w * 0.04,
              bottom: context.h * 0.01,
            ),
            child: TelegramText(
              text: 'Automatically delete my account',
              size: FontConst.kSmallFont,
              fontWeight: WeightConst.kSmallWeight,
            ),
          ),
          SizedBox(
            height: context.h * 0.04,
            width: double.infinity,
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title:
                        TelegramText(text: 'If Away For', color: Colors.black),
                    trailing: TelegramText(
                      text: '6 months',
                      textAlign: TextAlign.end,
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: context.h * 0.02,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.01),
            child: TelegramText(
              text:
                  'If you do not come online at least once within this period, your account will be deleted along with all messages and contacts.',
              size: FontConst.kSmallFont,
              fontWeight: WeightConst.kSmallWeight,
            ),
          ),
        ],
      )),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      iconTheme: IconThemeData(color: ColorConst.color007AFF),
      backgroundColor: ColorConst.colorF6F6F6,
      elevation: 0.0,
      title: TelegramText(
        text: 'Privacy and Security'.tr(),
        size: FontConst.kMediumFont,
        fontWeight: WeightConst.kMediumWeight,
        color: ColorConst.colorBlack,
      ),
    );
  }
}
