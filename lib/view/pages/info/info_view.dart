import 'package:flutter/material.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class InfoView extends StatelessWidget {
  const InfoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Column(
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
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Divider(
                  thickness: 1,
                ),
                Text(
                  "Last Name",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorConst.colorBlack,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _listTile("main", "phone number", ColorConst.color00B12C),
          _listTile("home", "home phone number", ColorConst.color037EE5),
          _listTile(
            "bio",
            "Design adds value faster, than it adds cost",
            ColorConst.colorBlack,
          ),
          const SizedBox(height: 12),
          ListTile(
            title: Text(
              "Notifications",
              style: MyTextStyleComp.myTextStyle(
                color: ColorConst.colorBlack,
                fontSize: 18,
              ),
            ),
            trailing: SizedBox(
              width: MediaQuery.of(context).size.width * 0.23,
              child: Row(
                children: [
                  Text(
                    "Enabled",
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
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              height: 0,
            ),
          ),
          const SizedBox(height: 18),
          ListTile(
            title: Text(
              "Delete Contact",
              style: MyTextStyleComp.myTextStyle(
                color: ColorConst.colorFE3B30,
                fontSize: 18,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              thickness: 1,
              height: 0,
            ),
          ),
        ],
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
