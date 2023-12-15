import 'package:flutter/material.dart';

Color primaryColor=Color(0xFFCADCED);

List<BoxShadow> customShadow = [
  BoxShadow(
        color: Colors.white.withOpacity(0.5), spreadRadius: -5, offset: Offset(-5, -5), blurRadius: 30),
    BoxShadow(
        color: Colors.blue[900]!.withOpacity(.2),
        spreadRadius: 2,

        offset: Offset(7, 7),
        blurRadius: 20)
  ];


List category = [
  {"name": "Courses", "amount": 500.0},
  {"name": "Online Shopping", "amount": 100.0},
  {"name": "Orders", "amount": 80.0},
  {"name": "Subscriptions", "amount": 100.0},
];

List pieColors = [
    Colors.indigo[400],
    Colors.blue,
    Colors.green,
    Colors.amber,
    Colors.deepOrange,
    Colors.brown,
  ];