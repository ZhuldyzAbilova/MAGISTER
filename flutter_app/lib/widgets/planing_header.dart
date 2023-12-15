import 'package:flutter/material.dart';

import 'package:untitled2/constant.dart';

class PlaningHeader extends StatelessWidget {
  const PlaningHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: const [
            Text(
              "Planning ",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          children: const [
            Icon(
              Icons.calendar_month_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "22 December 2022",
              style: TextStyle(
                  fontSize: 16,
                  color: kDarkBlue,
                  height: 2,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
