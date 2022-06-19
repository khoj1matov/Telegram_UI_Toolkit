import 'package:flutter/material.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

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
              leading: InkWell(
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: const NetworkImage(
                    "https://source.unsplash.com/random/",
                  ),
                  backgroundColor: ColorConst.color007AFF,
                  child: const Icon(Icons.camera_alt),
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
                      color: ColorConst.colorC7C7CC,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
            child: _text("Enter your name and add an optional profile photo."),
          ),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.06,
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 25),
              child: _text1("Digital goodies designer - Pixsellz"),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: _text(
                "Any details such as age, occupation or city.   Example: 23 y.o. designer from San Francisco.",
              ),
            ),
          ),
          _container(
            context,
            MediaQuery.of(context).size.height * 0.102,
            Column(
              children: [
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _text1("Change Number"),
                          _text2("+1 202 555 0147"),
                          Icon(
                            Icons.chevron_right_outlined,
                            color: ColorConst.color3C3C43,
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                Divider(
                  thickness: 1,
                  height: 20,
                  indent: MediaQuery.of(context).size.width * 0.06,
                ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _text1("Username"),
                        _text2("@jacob_designer"),
                        Icon(
                          Icons.chevron_right_outlined,
                          color: ColorConst.color3C3C43,
                        )
                      ],
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.048),
          InkWell(
            child: _container(
              context,
              MediaQuery.of(context).size.height * 0.06,
              Center(
                child: Text(
                  "Add Account",
                  style: MyTextStyleComp.myTextStyle(
                      color: ColorConst.color037EE5, fontSize: 18),
                ),
              ),
            ),
            onTap: () {},
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.048),
          InkWell(
            child: _container(
              context,
              MediaQuery.of(context).size.height * 0.06,
              Center(
                child: Text(
                  "Log Out",
                  style: MyTextStyleComp.myTextStyle(
                      color: ColorConst.colorFE3B30, fontSize: 18),
                ),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Text _text1(String text) {
    return Text(
      text,
      style: MyTextStyleComp.myTextStyle(fontSize: 18),
    );
  }

  Text _text2(String text) {
    return Text(
      text,
      style: MyTextStyleComp.myTextStyle(
        color: ColorConst.color3C3C43,
        fontSize: 18,
      ),
    );
  }

  Padding _text(String text) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text(
        text,
        style: MyTextStyleComp.myTextStyle(
          color: ColorConst.color636366,
          fontSize: 15,
        ),
      ),
    );
  }

  Container _container(BuildContext context, double h, Widget child) {
    return Container(
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
