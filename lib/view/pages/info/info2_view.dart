import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class Info2View extends StatelessWidget {
  const Info2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: InkWell(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: const NetworkImage(
                    "https://source.unsplash.com/random/",
                  ),
                  backgroundColor: ColorConst.color007AFF,
                ),
                onTap: () {},
              ),
              title: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  "Nick Name",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorConst.colorBlack,
                    fontSize: 20,
                  ),
                ),
              ),
              subtitle: Text(
                "online",
                style: MyTextStyleComp.myTextStyle(
                  color: ColorConst.color037EE5,
                  fontSize: 15,
                ),
              ),
              trailing: IconButton(
                icon: SvgPicture.asset("assets/icons/infoCall.svg"),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 10),
            _listTile("main", "phone number", ColorConst.color00B12C),
            _listTile("home", "home phone number", ColorConst.color037EE5),
            _listTile(
              "bio",
              "Design adds value faster, than it adds cost",
              ColorConst.colorBlack,
            ),
            _listTile("username", "@zack_life", ColorConst.color037EE5),
            _listTile("", "Send Message", ColorConst.color037EE5),
            _listTile("", "Share Contact", ColorConst.color037EE5),
            _listTile("", "Start Secret Chat", ColorConst.color037EE5),
            const SizedBox(height: 5),
            _listTileTrailing("Shared Media", ""),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
                height: 0,
              ),
            ),
            _listTileTrailing("Notifications", "Enabled"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
                height: 0,
              ),
            ),
            _listTileTrailing("Shared Media", "1"),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Divider(
                thickness: 1,
                height: 0,
              ),
            ),
            _listTile("", "Block User", ColorConst.colorFE3B30),
          ],
        ),
      ),
    );
  }

  ListTile _listTileTrailing(String text, String text2) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: MyTextStyleComp.myTextStyle(
              color: ColorConst.colorBlack,
              fontSize: 18,
            ),
          ),
        ],
      ),
      trailing: SizedBox(
        width: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              text2,
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
    );
  }

  ListTile _listTile(String text, String text2, Color color) {
    return ListTile(
      title: Text(
        text,
        style: MyTextStyleComp.myTextStyle(
          color: ColorConst.colorBlack,
          fontSize: 15,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text2,
            style: MyTextStyleComp.myTextStyle(
              color: color,
              fontSize: 18,
            ),
          ),
          const Divider(
            thickness: 1,
          ),
        ],
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorConst.color007AFF),
      elevation: 0,
      backgroundColor: ColorConst.colorF6F6F6,
      centerTitle: true,
      title: Text(
        "Edit Profile",
        style: MyTextStyleComp.contactsAppBarTitleStyle,
      ),
      actions: [
        TextButton(
          child: Text(
            "Done",
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
