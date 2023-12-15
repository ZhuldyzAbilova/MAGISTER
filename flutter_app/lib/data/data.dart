import 'package:untitled2/constant.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../model/course_model.dart';
import '../model/planing_model.dart';
import '../model/statistics_model.dart';

final List<Course> course = [

  Course(
      text: "Python - Developer",
      lessons: "35 Lessons",
      imageUrl: "img/Python.png",
      percent: 90,
      backImage: "img/01.png",
      color: kDarkBlue),
  Course(
      text: "Web - Developer",
      lessons: "30 Lessons",
      imageUrl: "img/web.png",
      percent: 50,
      backImage: "img/12.png",
      color: kOrange),
  Course(
      text: "1C - Developer",
      lessons: "20 Lessons",
      imageUrl: "img/1c.png",
      percent: 25,
      backImage: "img/123.png",
      color: kGreen),
  Course(
      text: "Data - Scientist",
      lessons: "40 Lessons",
      imageUrl: "img/admin.png",
      percent: 75,
      backImage: "img/1234.png",
      color: kYellow),

];

final List<Planing> planing = [
  Planing(
    heading: "Web - Developer course",
    subHeading: "08:00 - 10:00",
    color: kLightBlue,
    icon: const Icon(
      Icons.web,
      color: kDarkBlue,
    ),
  ),
  Planing(
    heading: "Python - Django Fraemwork - 1 ",
    subHeading: "15:00 - 17:00",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.laptop,
      color: kGreen,
    ),
  ),
  Planing(
    heading: "1C - Developer Course",
    subHeading: "8:00  - 12:00 ",
    color: const Color(0xffF9F0D3),
    icon: Icon(TernavIcons.lightOutline.laptop, color: kYellow),
  ),
  Planing(
    heading: "Data - Scientist",
    subHeading: "8:00  - 12:00 ",
    color: const Color(0xffF9E5D2),
    icon: Icon(
      TernavIcons.lightOutline.edit,
      color: kOrange,
    ),
  ),
  Planing(
    heading: "Python - Developer,Final Exam",
    subHeading: "15:00 AM - 18:00 PM",
    color: const Color(0xffE2EDD2),
    icon: Icon(
      TernavIcons.lightOutline.hedphon,
      color: kGreen,
    ),
  ),
];

final List<Statistics> statistics = [
  Statistics(
    title: "Course Completed",
    number: "02",
  ),
  Statistics(
    title: "Total Points Gained",
    number: "250",
  ),
  Statistics(
    title: "Course In Progress ",
    number: "03",
  ),
  Statistics(
    title: "Tasks \nFinished",
    number: "05",
  )
];
