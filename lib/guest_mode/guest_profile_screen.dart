import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/Starting%20Screens/login_signup_button_screen.dart';
import 'package:ott_app/Starting%20Screens/signup_screen.dart';
import 'package:ott_app/constant/constant_color.dart';

class GuestProfileScreen extends StatefulWidget {
  const GuestProfileScreen({super.key});

  @override
  State<GuestProfileScreen> createState() => _GuestProfileScreenState();
}

class _GuestProfileScreenState extends State<GuestProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constant.height * .95,
      width: Constant.width,
      padding: EdgeInsets.only(top: Constant.height * .07, left: 10, right: 10, bottom: 10),
      color: Colors.transparent,
      child: Column(
        children: [
          Container(
            height: Constant.height * .15,
            width: Constant.width * .3,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage('assets/images/moviepic/saddam.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 10,
                )
              ],
              border: Border.all(
                color: Colors.black,
                width: 1,
              )
            ),
          ),
          SizedBox(height: Constant.height * .02),
          Container(
            height: Constant.height * .5,
            width: Constant.width,
            //color: Colors.red,
            child: Text('Welcome, Guest! 🌟 Dive into a personalized paradise by signing in. From exclusive recommendations to seamless cross-device streaming, your profile is your gateway to an enhanced entertainment experience. Feel the thrill of personalized content - hit "Sign In" now to instantly unlock your curated world of entertainment. Want to explore further? Try our free trial for a taste of the tailored experience. Don`t miss out on the excitement – log in and start your seamless, personalized journey today! 🚀',
              style: TextStyle(fontSize: 21, color: Colors.white,)),
          ),
          SizedBox(height: Constant.height * .02),
          Container(
            height: Constant.height *.08,
            width: Constant.width * .8,
            decoration: BoxDecoration(
              color: Constant.color1,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: (){
                Get.offAll(LoginSignupScreen());
              }, child: Text('Sign in', style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),
            ),
          )
        ],
      ),
    );
  }
}
