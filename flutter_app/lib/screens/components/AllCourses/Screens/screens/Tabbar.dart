import 'package:untitled2/screens/components/AllCourses/Screens/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/screens/components/AllCourses/Screens/itemsCard.dart';
import '../../../../../main.dart';
import '../../Models/Courselist.dart';

import '../AboutScreen.dart';
import '../widgets/widgets.dart';
import 'Programm.dart';

class tabbar extends StatefulWidget {
  int selectedIndex = 0;
  @override
  // ignore: library_private_types_in_public_api
  _tabbarState createState() => _tabbarState();
}

class _tabbarState extends State<tabbar> with TickerProviderStateMixin {
  late TabController tabController;
  int currentTabIndex = 0;


  void onTabChange() {
    setState(() {
      currentTabIndex = tabController.index;
      print(currentTabIndex);
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);

    tabController.addListener(() {
      onTabChange();
    });
    super.initState();
  }

  @override
  void dispose() {
    tabController.addListener(() {
      onTabChange();
    });

    tabController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.redAccent, size: 28),
      ),      backgroundColor: MyTheme.kPrimaryColor,
      body: Column(
        children: [
          MyTabBar(tabController: tabController),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: TabBarView(
                controller: tabController,
                children: [
                  AboutScreen(),
                  Programm(),
                  FeedbackScreen(),
                ],
              ),
            ),
          )
        ],
      ),

    );
  }
}
