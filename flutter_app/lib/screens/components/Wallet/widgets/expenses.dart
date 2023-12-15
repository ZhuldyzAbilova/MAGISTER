import 'package:flutter/material.dart';
import 'package:untitled2/screens/components/Wallet/widgets/piechart.dart';
import 'package:untitled2/screens/components/Wallet/data.dart';

class Expense extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  child: Text(
                    "On this month",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Color(0xFF134064),
                    ),
                  )),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 6,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: category.map((data) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5.0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 5,
                              backgroundColor:
                                  pieColors[category.indexOf(data)],
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              data['name'],
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: PieChart(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
