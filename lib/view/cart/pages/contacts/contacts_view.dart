import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegramuitoolkit/core/components/text_style_comp.dart';
import 'package:telegramuitoolkit/core/constants/color_const.dart';

class ContactsView extends StatelessWidget {
  const ContactsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.colorWhite,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorConst.colorTransparent,
                  child: SvgPicture.asset("assets/icons/contactsLocation.svg"),
                ),
                title: Text(
                  "Add People Nearby",
                  style: MyTextStyleComp.contactsLocationTitleStyle,
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              height: 0,
              indent: MediaQuery.of(context).size.width * 0.23,
            ),
            InkWell(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorConst.colorTransparent,
                  child: SvgPicture.asset(
                      "assets/icons/contactsInviteFriends.svg"),
                ),
                title: Text(
                  "Invite Friends",
                  style: MyTextStyleComp.contactsLocationTitleStyle,
                ),
              ),
              onTap: () {},
            ),
            Divider(
              thickness: 1,
              height: 0,
              indent: MediaQuery.of(context).size.width * 0.23,
            ),
            SizedBox(
              // TabBar qoshsak shu yerda height da hato berishi mumkin
              height: MediaQuery.of(context).size.height * 1.772,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Column(
                  children: [
                    InkWell(
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            "https://source.unsplash.com/random/$index",
                          ),
                          backgroundColor: ColorConst.color007AFF,
                        ),
                        title: Text(
                          "Nick Name",
                          style: MyTextStyleComp.contactsAppBarTitleStyle,
                        ),
                        subtitle: Text(
                          "Last sin recently",
                          style: MyTextStyleComp.contactsListViewSubTitleStyle,
                        ),
                      ),
                      onTap: () {},
                    ),
                    Divider(
                      thickness: 1,
                      height: 0,
                      indent: MediaQuery.of(context).size.width * 0.23,
                    ),
                  ],
                ),
                itemCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorConst.colorF6F6F6,
      centerTitle: true,
      title: Text(
        "Contacts",
        style: MyTextStyleComp.contactsAppBarTitleStyle,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.add,
            color: ColorConst.color007AFF,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
