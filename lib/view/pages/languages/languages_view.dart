import 'package:flutter/material.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';
import 'package:telegramuitoolkit/core/constants/font_const.dart';
import 'package:telegramuitoolkit/core/constants/radius_const.dart';
import 'package:telegramuitoolkit/core/extensions/context_extensions.dart';
import 'package:telegramuitoolkit/core/widgets/telegram_text.dart';

class LanguagesView extends StatelessWidget {
  LanguagesView({Key? key}) : super(key: key);

  List<String> langEngList = [
    "English",
    "Uzbek",
    "Arabic",
    "Catalan",
    "Dutch",
    "French",
    "German",
    "Indonesian",
    "Italian",
    "Korean",
    "Malay",
    "Persian",
    "Portuguese",
  ];

  List<String> langList = [
    "English",
    "O'zbekcha",
    "العربية",
    "Català",
    "Nederlands",
    "Français",
    "Deutsch",
    "Bahasa Indonesia",
    "Italiano",
    "한국어",
    "Bahasa Melayu",
    "فارسی",
    "Português (Brasil)"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: ColorConst.colorBlack),
        centerTitle: true,
        backgroundColor: ColorConst.colorF6F6F6,
        elevation: 0.0,
        title: TelegramText(
          text: 'Language',
          size: FontConst.kMediumFont,
          fontWeight: WeightConst.kMediumWeight,
          color: ColorConst.colorBlack,
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              autofocus: true,
              cursorColor: ColorConst.color767680_12,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConst.color3C3C43,
                ),
                fillColor: ColorConst.color767680_12,
                filled: true,
                hintText: "Search",
                hintStyle: TextStyle(
                  color: ColorConst.color3C3C43,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(RadiusConst.kExtraSmallRadius),
                  // borderSide: BorderSide(
                  //   color: ColorConst.color767680_12,
                  // ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    RadiusConst.kExtraSmallRadius,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    RadiusConst.kExtraSmallRadius,
                  ),
                  borderSide: BorderSide(
                    color: ColorConst.color767680_12,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: context.h,
            width: double.infinity,
            child: ListView.builder(
                itemCount: langEngList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      tileColor: ColorConst.colorWhite,
                      title: TelegramText(
                        text: langEngList[index].toString(),
                        color: ColorConst.colorBlack,
                        size: FontConst.kMediumFont,
                      ),
                      subtitle: TelegramText(
                        text: langList[index].toString(),
                        size: FontConst.kMediumFont,
                      ),
                    ),
                  );
                }),
          ),
        ],
      )),
    );
  }
}
