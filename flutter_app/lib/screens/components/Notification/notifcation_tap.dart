import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/Start/login_page.dart';
import '../../../Theme/size_config.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifcation extends StatefulWidget {
  const Notifcation({Key? key}) : super(key: key);

  @override
  State<Notifcation> createState() => _NotifcationState();
}

class _NotifcationState extends State<Notifcation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.redAccent, size: 28),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              height: resH(600),
              child: DefaultTextStyle(
                style: GoogleFonts.dmSans(
                  fontSize: resW(50),
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText('Turn On'),
                    FadeAnimatedText('Notifications'),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'img/bell.png',
                  height: Get.height*0.4,
                  width: Get.width*0.9,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 300),
                SizedBox(
                  height: resH(50),
                ),
                const SizedBox(height:30,),
                SwitchListTile(
                  activeColor: Colors.redAccent,
                  contentPadding: const EdgeInsets.all(50),
                  value: true,
                  title: Text(
                    "Receive notifications",
                    style: TextStyle(color: Colors.redAccent),
                ), onChanged: (val){},
                )],
            ),
          )
        ],
      ),
    );
  }
}
