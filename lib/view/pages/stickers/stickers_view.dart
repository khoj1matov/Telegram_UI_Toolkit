import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class StickersView extends StatelessWidget {
  const StickersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.colorF6F6F6,
      appBar: _appBar(context),
      body: Column(
        children: [
           SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.36,
            Column(
              children: [
                _row(
                  "Suggest by Emoji",
                  Row(
                    children: [
                      Text(
                        "All Sets",
                        style: MyTextStyleComp.myTextStyle(
                          color: ColorConst.color3C3C43,
                          fontSize: 17,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorConst.color3C3C43,
                      ),
                    ],
                  ),
                ),
                _divider(context, 0.03),
                _row(
                  "Trending Stickers",
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: ColorConst.color007AFF,
                        child: const Text("15"),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorConst.color3C3C43,
                      ),
                    ],
                  ),
                ),
                _divider(context, 0.03),
                _row(
                  "Archived Stickers",
                  Row(
                    children: [
                      Text(
                        "46",
                        style: MyTextStyleComp.myTextStyle(
                          color: ColorConst.color3C3C43,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: ColorConst.color3C3C43,
                      ),
                    ],
                  ),
                ),
                _divider(context, 0.03),
                _row(
                  "Masks",
                  Icon(
                    Icons.chevron_right,
                    color: ColorConst.color3C3C43,
                  ),
                ),
                _divider(context, 0.03),
                _row(
                  "Loop Animated Stickers",
                  CupertinoSwitch(value: true, onChanged: (v) {}),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.115,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Animated stickers will play in chat continuously.",
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorConst.color636366,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "STICKER SETS",
                    style: MyTextStyleComp.myTextStyle(
                      color: ColorConst.color636366,
                      fontSize: 15,
                    ),
                  )
                ],
              ),
            ),
          ),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.37,
            Column(
              children: [
                const SizedBox(height: 10),
                _inkwell("stickersSimba", "Simba"),
                _divider(context, 0.21),
                _inkwell("stickersDiggy", "Diggy animated"),
                _divider(context, 0.21),
                _inkwell("stickersTed", "Ted"),
                _divider(context, 0.21),
                _inkwell("stickersEgg", "Egg Yolk"),
                _divider(context, 0.21),
                _inkwell("stickersScreaming", "Screaming Checkin"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _row(String text, Widget widget) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: MyTextStyleComp.myTextStyle(
              color: ColorConst.colorBlack,
              fontSize: 18,
            ),
          ),
          widget,
        ],
      ),
    );
  }

  Divider _divider(BuildContext context, double size) {
    return Divider(
      thickness: 1,
      indent: MediaQuery.of(context).size.width * size,
    );
  }

  InkWell _inkwell(String svg, String text) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/$svg.png"),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: MyTextStyleComp.myTextStyle(fontSize: 18),
                ),
                Text(
                  "25 stickers",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorConst.color8E8E93,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }

  Container _container(BuildContext context, double h, Widget child) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: h,
      color: ColorConst.colorWhite,
      child: child,
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorConst.colorF6F6F6,
      centerTitle: true,
      title: Text(
        "Stickers",
        style: MyTextStyleComp.contactsAppBarTitleStyle,
      ),
      actions: [
        TextButton(
          child: Text(
            "Edit",
            style: MyTextStyleComp.myTextStyle(
              color: ColorConst.color037EE5,
              fontSize: 17,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
