import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';
import 'package:telegramuitoolkit/core/constants/font_const.dart';
import 'package:telegramuitoolkit/core/extensions/context_extensions.dart';
import 'package:telegramuitoolkit/core/widgets/telegram_text.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({Key? key}) : super(key: key);

  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  bool _allAccValue = true;
  bool _showNotValue = true;
  bool _messPrevValue = false;
  bool _showNotGrpouValue = false;
  bool _messPrevGroupValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConst.color007AFF),
        centerTitle: true,
        backgroundColor: ColorConst.colorF6F6F6,
        elevation: 0.0,
        title: TelegramText(
          text: 'Notifications',
          size: FontConst.kMediumFont,
          fontWeight: WeightConst.kMediumWeight,
          color: ColorConst.colorBlack,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.02,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
              ),
              child: TelegramText(
                text: 'SHOW NOTIFICATIONS FROM',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            SwitchListTile.adaptive(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'All Accounts',
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _allAccValue,
                onChanged: (status) {
                  setState(() {
                    _allAccValue = !_allAccValue;
                  });
                }),
            // nothing less everything
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.01,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.02,
              ),
              child: TelegramText(
                text:
                    'Turn this off if you want to receive notifications only from your active account.',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.035,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.02,
              ),
              child: TelegramText(
                text: 'MESSAGE NOTIFICATIONS',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            SwitchListTile.adaptive(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Show Notifications',
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _showNotValue,
                onChanged: (status) {
                  setState(() {
                    _showNotValue = !_showNotValue;
                  });
                }),
            const SizedBox(height: 1),
            SwitchListTile.adaptive(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Message Preview',
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _messPrevValue,
                onChanged: (status) {
                  setState(() {
                    _messPrevValue = !_messPrevValue;
                  });
                }),
            const SizedBox(height: 1),
            ListTile(
              tileColor: ColorConst.colorWhite,
              leading: TelegramText(
                text: 'Sound',
                color: Colors.black,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: TelegramText(
                text: 'None',
                color: Colors.black.withOpacity(0.6),
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),
            ListTile(
              tileColor: ColorConst.colorWhite,
              leading: TelegramText(
                text: 'Exceptions',
                color: Colors.black,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: TelegramText(
                text: '66 chats >',
                color: Colors.black.withOpacity(0.6),
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.01,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.02,
              ),
              child: TelegramText(
                text: 'Set custom notifications for specific users.',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.035,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.02,
              ),
              child: TelegramText(
                text: 'GROUP NOTIFICATIONS',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),

            SwitchListTile.adaptive(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Show Notifications',
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _showNotGrpouValue,
                onChanged: (status) {
                  setState(() {
                    _showNotGrpouValue = !_showNotGrpouValue;
                  });
                }),
            const SizedBox(height: 1),
            SwitchListTile.adaptive(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Message Preview',
                  color: Colors.black,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _messPrevGroupValue,
                onChanged: (status) {
                  setState(() {
                    _messPrevGroupValue = !_messPrevGroupValue;
                  });
                }),
            const SizedBox(height: 1),
            ListTile(
              tileColor: ColorConst.colorWhite,
              leading: TelegramText(
                text: 'Sound',
                color: Colors.black,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: TelegramText(
                text: 'None',
                color: Colors.black.withOpacity(0.6),
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),
            ListTile(
              tileColor: ColorConst.colorWhite,
              leading: TelegramText(
                text: 'Exceptions',
                color: Colors.black,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: TelegramText(
                text: 'Add >',
                color: Colors.black.withOpacity(0.6),
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.01,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
                right: context.w * 0.05,
              ),
              child: TelegramText(
                text: 'Set custom notificaions for specific groups.',
                size: FontConst.kSmallFont,
                // textAlign: TextAlign.start,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
