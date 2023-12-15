import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled2/Start/login_page.dart';
import '../../Theme/size_config.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'img/comp.png',
                  height: Get.height*0.5,
                  width: Get.width*0.9,
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'img/Magister.png',
                  width: resW(170),
                ),
                const SizedBox(height: 300),
                SizedBox(
                  height: resH(50),
                  child: DefaultTextStyle(
                    style: GoogleFonts.dmSans(
                      fontSize: resW(20),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    child: AnimatedTextKit(
                      repeatForever: true,
                      animatedTexts: [
                        FadeAnimatedText('Magister'),
                        FadeAnimatedText('Welcome'),
                        FadeAnimatedText('Hi'),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:30,),
                ElevatedButton(
                    onPressed: () => Get.offAll(() => const LoginPage()),
                    child: Text(
                      'Начать',
                      style: GoogleFonts.archivo(
                        fontSize: resW(20),
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                textStyle: MaterialStateProperty.all(TextStyle(fontSize: 15))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
