import 'package:untitled2/screens/components/Wallet/Wallet settings/constants/captions.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/screens/components/Wallet/Wallet settings/provider/card_valid_provider.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/screens/components/Wallet/Wallet settings/constants/constanst.dart';

class CardValid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String inputCardValid = Provider.of<CardValidProvider>(context).cardValid;

    var defaultCardValid = Provider.of<Captions>(context)
        .getCaption('MM_YY')!
        .substring(inputCardValid.length);

    inputCardValid = inputCardValid.replaceAll("/", "");

    switch (inputCardValid.length) {
      case 3:
        inputCardValid =
            inputCardValid[0] + inputCardValid[1] + '/' + inputCardValid[2];
        break;
      case 4:
        inputCardValid = inputCardValid[0] +
            inputCardValid[1] +
            '/' +
            inputCardValid[2] +
            inputCardValid[3];
        break;
    }

    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          inputCardValid,
          style: kValidtextStyle,
        ),
        Text(
          defaultCardValid,
          style: kDefaultValidTextStyle,
        )
      ],
    ));
  }
}
