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
          _container(
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
                style: MyTextStyle.myTextStyle(
                  color: ColorConst.colorBlack,
                  fontSize: 20,
                ),
              ),
              subtitle: const Text('+1 202 555 0147\n@jacob_d'),
              trailing: IconButton(
                icon: const Icon(Icons.chevron_right_sharp),
                onPressed: () {},
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.1,
            Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/settingsRectangle.svg"),
                    const Text("Jacob Design"),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
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
      elevation: 0,
      backgroundColor: ColorConst.colorF6F6F6,
      centerTitle: true,
      title: Text(
        "Settings",
        style: MyTextStyle.contactsAppBarTitleStyle,
      ),
      actions: [
        TextButton(
          child: Text(
            "Edit",
            style: MyTextStyle.myTextStyle(
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
                  style: MyTextStyle.myTextStyle(
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
