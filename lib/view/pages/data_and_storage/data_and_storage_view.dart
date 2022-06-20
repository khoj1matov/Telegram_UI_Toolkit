import 'package:flutter/material.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';
import 'package:telegramuitoolkit/core/constants/font_const.dart';
import 'package:telegramuitoolkit/core/extensions/context_extensions.dart';
import 'package:telegramuitoolkit/core/widgets/telegram_text.dart';

class DataAndStorageView extends StatefulWidget {
  const DataAndStorageView({Key? key}) : super(key: key);
  @override
  _DataAndStorageViewState createState() => _DataAndStorageViewState();
}

class _DataAndStorageViewState extends State<DataAndStorageView> {
  bool _gifValue = false;
  bool _videosValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConst.colorF6F6F6,
        elevation: 0.0,
        title: TelegramText(
          text: 'Data And Storage',
          size: FontConst.kMediumFont,
          fontWeight: WeightConst.kMediumWeight,
          color: ColorConst.colorBlack,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
                tileColor: ColorConst.colorWhite,
                leading: TelegramText(
                  text: 'Storage Usage',
                  color: ColorConst.colorBlack,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                trailing: const Icon(Icons.chevron_right)),
            SizedBox(height: context.h * 0.001),
            ListTile(
                tileColor: ColorConst.colorWhite,
                leading: TelegramText(
                  text: 'Network Usage',
                  color: ColorConst.colorBlack,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                trailing: const Icon(Icons.chevron_right)),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.03,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
              ),
              child: TelegramText(
                text: 'AUTOMATIC MEDIA DOWNLOAD',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            ListTile(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Using Celullar',
                  color: ColorConst.colorBlack,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                subtitle: TelegramText(
                  text: 'Disabled',
                  color: ColorConst.color8E8E93,
                  size: FontConst.kSmallFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                trailing: const Icon(Icons.chevron_right)),
            SizedBox(height: context.h * 0.001),
            ListTile(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Using Wi-Fi',
                  color: ColorConst.colorBlack,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                subtitle: TelegramText(
                  text: 'Disabled',
                  color: ColorConst.color8E8E93,
                  size: FontConst.kSmallFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                trailing: const Icon(Icons.chevron_right)),
            SizedBox(height: context.h * 0.001),
            ListTile(
              tileColor: ColorConst.colorWhite,
              leading: TelegramText(
                text: 'Reset Auto-Download Settings',
                color: ColorConst.color037EE5,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.03,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
              ),
              child: TelegramText(
                text: 'AUTO-PLAY MEDIA',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            SwitchListTile.adaptive(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'GIFs',
                  color: ColorConst.colorBlack,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _gifValue,
                onChanged: (status) {
                  setState(() {
                    _gifValue = !_gifValue;
                  });
                }),
            SwitchListTile.adaptive(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Videos',
                  color: ColorConst.colorBlack,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                value: _videosValue,
                onChanged: (status) {
                  setState(() {
                    _videosValue = !_videosValue;
                  });
                }),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.03,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
              ),
              child: TelegramText(
                text: 'VOICE CALLS',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            ListTile(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Use Less Data',
                  color: ColorConst.colorBlack,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                trailing: const Icon(Icons.chevron_right)),
            Padding(
              padding: EdgeInsets.only(
                top: context.h * 0.03,
                left: context.w * 0.04,
                bottom: context.h * 0.01,
              ),
              child: TelegramText(
                text: 'OTHERS',
                size: FontConst.kSmallFont,
                fontWeight: WeightConst.kSmallWeight,
                // textAlign: TextAlign.start,
              ),
            ),
            ListTile(
                tileColor: ColorConst.colorWhite,
                title: TelegramText(
                  text: 'Save incoming photos',
                  color: ColorConst.colorBlack,
                  size: FontConst.kMediumFont,
                  fontWeight: WeightConst.kSmallWeight,
                ),
                trailing: const Icon(Icons.chevron_right)),
          ],
        ),
      ),
    );
  }
}