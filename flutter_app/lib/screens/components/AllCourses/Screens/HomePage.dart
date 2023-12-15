import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled2/screens/components/AllCourses//Component/defaultElements.dart';
import 'package:untitled2/screens/components/AllCourses//Models/Courselist.dart';
import 'package:untitled2/screens/components/AllCourses//Screens/itemsCard.dart';

import '../../Search.dart';

class AllCourses extends StatefulWidget {
  @override
  _AllCoursesState createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DefaultElements.kdefaultbgcolor,
      appBar: AppBar(
          actions: [
          IconButton(
          onPressed: () {
               Navigator.push(
                          context,
                       MaterialPageRoute(builder: (context) => Search()));
            },
            icon: const Icon(
            Icons.search,
            color: Colors.redAccent,
      ),
    ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.redAccent, size: 28),

      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildProductSection(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: GridView.builder(
                    itemCount: CourseListModel.length,
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => Itemcards(
                      CourseListModel: CourseListModel[index],
                      index: index,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }


  Padding buildProductSection() {
    return Padding(
      padding: EdgeInsets.only(left: 25, top: 10, right: 25),
      child: Row(
        children: [
          Text(
            "All Courses",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w900,
            ),
          ),
          Expanded(
            child: Container(),
          ),
        ],
      ),
    );
  }

}
