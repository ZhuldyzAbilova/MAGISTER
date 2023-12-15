import 'package:flutter/material.dart';
import 'package:untitled2/main.dart';
import 'package:untitled2/screens/components/Wallet/Wallet%20settings/credit_card_input_form.dart';
import 'package:untitled2/screens/components/Wallet/data.dart';

class WalletHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              boxShadow: customShadow,
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  // boxShadow: customShadow,
                  color: Colors.redAccent,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    boxShadow: customShadow,
                    color: primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Icon(Icons.arrow_back,size: 30,color: Color(0xFF134064),),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              boxShadow: customShadow,
              color: primaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Container(
                  margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  // boxShadow: customShadow,
                  color: Colors.redAccent,
                  shape: BoxShape.circle,
                ),
                child: Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                  boxShadow: customShadow,
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CardHolder()),
                    );
                  },
                  child: Center(
                    child: Icon(Icons.settings,size: 30,color: Color(0xFF134064),),
                  ),
                ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
