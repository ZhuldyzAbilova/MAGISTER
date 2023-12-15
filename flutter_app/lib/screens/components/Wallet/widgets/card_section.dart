import 'package:flutter/material.dart';
import 'package:untitled2/screens/components/Wallet/data.dart';
import '../widgets/card_details.dart';

class CardSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Text(
          "Zhuldyz's Account",
          style:TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF134064),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Card Selected",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
              color: Color(0xFF134064),
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width - 45,
                    margin: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
                    decoration: BoxDecoration(
                      boxShadow: customShadow,
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          top: 65,
                          bottom: -150,
                          // left: 90,
                          child: Container(
                            decoration: BoxDecoration(
                              // boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                        Positioned.fill(
                          top: -100,
                          bottom: -100,
                          left: -250,
                          right: -350,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: customShadow,
                              shape: BoxShape.circle,
                              color: Colors.white54,
                            ),
                          ),
                        ),
                        CardDetails(),
                      ],
                    ),
                  );
                })),
      ],
    );
  }
}
