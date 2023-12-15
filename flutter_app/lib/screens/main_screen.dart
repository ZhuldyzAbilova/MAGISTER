import 'package:untitled2/screens/components/AllCourses/Screens/HomePage.dart';
import 'package:untitled2/screens/components/side_menu.dart';
import 'package:untitled2/widgets/courses_grid.dart';
import 'package:untitled2/widgets/planing_grid.dart';
import 'package:untitled2/widgets/statistics_grid.dart';
import 'package:flutter/material.dart';

import 'package:untitled2/constant.dart';
import '../widgets/planing_header.dart';
import 'components/AllCourses/Screens/screens/Tabbar.dart';
import 'components/Notification/notifcation_tap.dart';
import 'components/Profiles.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key, required this.email}): super(key: key);
  String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.redAccent, size: 28),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifcation()));
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.redAccent,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            child: Container(
              margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'img/profile1.png',
                ),
              ),
            ),
          )
        ],
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: TextSpan(
                  text: "Hello ",
                  style: TextStyle(color: kDarkBlue, fontSize: 20),
                  children: [
                    TextSpan(
                      text: email,
                      style: TextStyle(
                          color: kDarkBlue, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ", welcome back!",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllCourses()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "View All",
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CourseGrid(
              ),
              const SizedBox(
                height: 20,
              ),
              const PlaningHeader(),
              const SizedBox(
                height: 15,
              ),
              const PlaningGrid(),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Statistics",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const StatisticsGrid(),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

