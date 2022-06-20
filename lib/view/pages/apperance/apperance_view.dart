import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';
import 'package:telegramuitoolkit/core/constants/font_const.dart';
import 'package:telegramuitoolkit/core/extensions/context_extensions.dart';
import 'package:telegramuitoolkit/core/widgets/telegram_text.dart';

class ApperanceView extends StatelessWidget {
  const ApperanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConst.colorF6F6F6,
        elevation: 0.0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: context.w * 0.05),
            child: SvgPicture.asset(
              'assets/icons/apperanceAppBarUpload.svg',
              color: ColorConst.color037EE5,
            ),
          )
        ],
        title: TelegramText(
          text: 'Appearance',
          size: FontConst.kMediumFont,
          fontWeight: WeightConst.kMediumWeight,
          color: ColorConst.colorBlack,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.h * 0.4,
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/images/ColorTheme.svg',
            ),
          ),
          ListTile(
              tileColor: ColorConst.colorWhite,
              title: TelegramText(
                text: 'Chat Background',
                color: ColorConst.colorBlack,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: const Icon(Icons.chevron_right)),
          ListTile(
              tileColor: ColorConst.colorWhite,
              title: TelegramText(
                text: 'Auto-Night Mode',
                color: ColorConst.colorBlack,
                size: FontConst.kMediumFont,
                fontWeight: WeightConst.kSmallWeight,
              ),
              trailing: const Icon(Icons.chevron_right)),
          SizedBox(height: context.h * 0.03),
          SizedBox(
            height: context.h * 0.14,
            width: double.infinity,
            child: SvgPicture.asset(
              'assets/images/TextSize.svg',
            ),
          ),
          SizedBox(
            height: context.h * 0.2,
            width: double.infinity,
            child: Image.asset(
              'assets/images/bar.png',
              // color: Colors.redAccent,
            ),
          ),
        ],
      )),
    );
  }
}
