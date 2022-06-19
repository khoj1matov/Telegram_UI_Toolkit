import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class ChatView extends StatelessWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          "assets/images/chatBackground.png",
          fit: BoxFit.cover,
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/chatAttach.svg"),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.045,
              width: MediaQuery.of(context).size.width * 0.73,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: SvgPicture.asset("assets/icons/chatShape.svg"),
                    onPressed: () {},
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        BorderSide(color: ColorConst.colorAEAEB2, width: 1),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide:
                        BorderSide(color: ColorConst.colorAEAEB2, width: 1),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/chatAudio.svg"),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorConst.colorF6F6F6,
      centerTitle: true,
      title: Column(
        children: [
          Text(
            "Nick Name",
            style: MyTextStyleComp.myTextStyle(
              color: ColorConst.colorBlack,
              fontSize: 18,
            ),
          ),
          Text(
            "last seen just now",
            style: MyTextStyleComp.myTextStyle(
              color: ColorConst.color787878,
              fontSize: 14,
            ),
          )
        ],
      ),
      actions: [
        InkWell(
          child: CircleAvatar(
            radius: 25,
            // backgroundImage: const NetworkImage(
            //   "https://source.unsplash.com/random/",
            // ),
            backgroundColor: ColorConst.color007AFF,
          ),
          onTap: () {
            Navigator.pushNamed(context, "/info");
          },
        ),
      ],
    );
  }
}
