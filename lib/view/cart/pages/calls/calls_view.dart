import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorConst.colorF6F6F6,
      centerTitle: true,
      leading: TextButton(
        child: Text(
          "Edit",
          style: MyTextStyleComp.myTextStyle(
            color: ColorConst.color037EE5,
            fontSize: 17,
          ),
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset("assets/icons/callsAppBarAddCall.svg"),
          onPressed: () {},
        ),
      ],
      title: Container(
        padding: const EdgeInsets.only(left: 3, right: 20),
        height: 32,
        width: 160,
        decoration: BoxDecoration(
          color: ColorConst.color767680_12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              height: 28,
              width: 76,
              decoration: BoxDecoration(
                color: ColorConst.colorWhite,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "All",
                style: MyTextStyleComp.myTextStyle(),
              ),
            ),
            Text(
              "Missed",
              style: MyTextStyleComp.myTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
