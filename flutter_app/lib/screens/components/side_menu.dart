import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import 'package:untitled2/auth%20system/auth_controller.dart';

import 'package:untitled2/constant.dart';
import 'package:untitled2/main.dart';
import 'package:untitled2/screens/components/Settings/Settings.dart';
import 'package:untitled2/screens/main_screen.dart';

import '../../Start/login_page.dart';
import 'AllCourses/Screens/HomePage.dart';
import 'Profiles.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 100,
            child: DrawerHeader(
                child: Image.asset(
              'img/Magister.png',
            )),
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.home_2,
            title: "Home",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.profile,
            title: "Profile",
            onTap: () {
            Navigator.push(
            context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
             );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.bookmark,
            title: "All Courses",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AllCourses()),
              );
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.wallet,
            title: "Wallet",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Wallet()),
              );

            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.settings,
            title: "Settings",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SettingsOnePage()),
              );

            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.logout,
            title: "logOut",
            onTap: () {
              AuthController.instance.logOut();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'img/help.png',
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                color: kLightBlue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Upgrade your plan",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Go to Pro", style: TextStyle(color: kDarkBlue)),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: kDarkBlue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: kDarkBlue,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
