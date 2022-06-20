import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.colorF6F6F6,
      appBar: _appBar(context),
      body: Column(
        children: [
          InkWell(
            child: _container(
              context,
              MediaQuery.of(context).size.height * 0.1,
              ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: const NetworkImage(
                    "https://source.unsplash.com/random/${1}",
                  ),
                  backgroundColor: ColorConst.color007AFF,
                ),
                title: Text(
                  "Nick Name",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorConst.colorBlack,
                    fontSize: 20,
                  ),
                ),
                subtitle: const Text('+1 202 555 0147\n@jacob_d'),
                trailing: const Icon(Icons.chevron_right_sharp),
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.048),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.1,
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: _inkwell("tabBarContacts1", " Jacob Design", () {}),
                ),
                _divider(context),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: _inkwell("settingsAdd", "  Add Account", () {}),
                )
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.048),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.175,
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: _inkwell("settingsSaved", "Saved Messages", () {}),
                ),
                _divider(context),
                _inkwell("settingsCall", "Recent Calls", () {}),
                _divider(context),
                _inkwell("settingsStikers", "Stickers", () {
                  Navigator.pushNamed(context, '/stickers');
                }),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.048),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.23,
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: _inkwell(
                    "settingsNotificationsAndSounds",
                    "Notifications and Sounds",
                    () {
                      Navigator.pushNamed(context, '/notification');
                    },
                  ),
                ),
                _divider(context),
                _inkwell("settingsPrivacySecurity", "Privacy and Security", () {
                  Navigator.pushNamed(context, "/privacy");
                }),
                _divider(context),
                _inkwell("settingsDataStorage", "Data and Storage", () {
                  Navigator.pushNamed(context, "/data_and_storage");
                }),
                _divider(context),
                _inkwell("settingsAppearance", "Appearance", () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Divider _divider(BuildContext context) {
    return Divider(
      thickness: 1,
      indent: MediaQuery.of(context).size.width * 0.17,
    );
  }

  InkWell _inkwell(String svg, String text, function) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 17),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/$svg.svg"),
                  const SizedBox(width: 20),
                  Text(
                    text,
                    style: MyTextStyleComp.myTextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: ColorConst.color3C3C43,
            ),
          ],
        ),
      ),
      onTap: function,
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
        "Settings",
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
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: InkWell(
          child: Container(
            margin: const EdgeInsets.only(bottom: 15),
            height: MediaQuery.of(context).size.height * 0.045,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConst.color767680_12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, color: ColorConst.color3C3C43),
                const SizedBox(width: 10),
                Text(
                  "Search",
                  style: MyTextStyleComp.myTextStyle(
                    color: ColorConst.color3C3C43,
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
