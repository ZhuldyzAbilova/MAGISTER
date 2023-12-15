import 'package:flutter/material.dart';
import 'package:untitled2/screens/components/Wallet/data.dart';

class CardDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top:20.0,left: 15),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 200.0,
              child: Image.asset('img/mastercardlogo.png'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:18.0,right: 10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(boxShadow: customShadow),
              child: Image.asset(
                'img/chip.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom:8.0),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 30, left: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        "**** **** **** ",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "1930",
                        style:
                            TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:18.0),
                    child: Text(
                      "Platinum Card".toUpperCase(),
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
