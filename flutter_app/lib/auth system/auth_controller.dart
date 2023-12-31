import 'package:untitled2/Start/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:get/get.dart';
import 'package:untitled2/Start/start_screen.dart';
import 'package:untitled2/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  //AuthController.instance..
  //email.password,name
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void onReady() {
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    //our user would be notified
    _user.bindStream(auth.userChanges());
    ever(_user, _initalScreen);
  }

  _initalScreen(User? user){
    if(user==null){
      print("login page");
      Get.offAll(()=>StartScreen());
    }else{
      Get.offAll(()=>MainScreen(email:user.email!));
    }
  }
  void register(String email,password) async {
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About User", "User message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Account creation failed",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(
                color:Colors.white
            ),
          )
      );
    }

  }
  void login(String email,password) async {
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar("About Login", "Login message",
          backgroundColor: Colors.redAccent,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Login failed",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          messageText: Text(
            e.toString(),
            style: TextStyle(
                color:Colors.white
            ),
          )
      );
    }

  }
  void logOut()async{
    await auth.signOut();
  }
}
