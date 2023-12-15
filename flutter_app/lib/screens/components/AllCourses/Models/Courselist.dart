import 'package:flutter/material.dart';
import 'package:untitled2/screens/components/AllCourses/Component/defaultElements.dart';

class ListModel {
  String image;
  String persentage;
  String Name;
  String rating;
  bool showpersentage;
  bool activeheart;
  Color showcasebgcolor;
  Color lightShowcasebgcolor;

  ListModel({
    required this.image,
    required this.persentage,
    required this.Name,
    required this.rating,
    this.showpersentage = false,
    this.activeheart = false,
    required this.showcasebgcolor,
    required this.lightShowcasebgcolor,
  });
}

List<ListModel> CourseListModel = [
  ListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorpink,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorpink,
    image: "img/admin.png",
    persentage: "30%",
    Name: "Data - Scientist ",
    rating: "(4.5)",
    showpersentage: true,
    activeheart: false,
  ),
  ListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorblue,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorblue,
    image: "img/Python.png",
    persentage: "30%",
    Name: "Python - Developer",
    rating: "(3.0)",
    showpersentage: false,
    activeheart: true,
  ),
  ListModel(
    showcasebgcolor: DefaultElements.kshoebgcolorgreen,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcolorgreen,
    image: "img/1c.png",
    persentage: "30%",
    Name: "1C - Developer",
    rating: "(3.0)",
    showpersentage: false,
    activeheart: false,
  ),
  ListModel(
    showcasebgcolor: DefaultElements.kshoebgcoloryellow,
    lightShowcasebgcolor: DefaultElements.lightShowcasebgcoloryellow,
    image: "img/web.png",
    persentage: "40%",
    Name: "Web - Developer",
    rating: "(4.5)",
    showpersentage: true,
    activeheart: false,
  ),
];
