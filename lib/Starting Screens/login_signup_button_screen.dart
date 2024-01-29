import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:ott_app/Starting%20Screens/login_screen.dart';
import 'package:ott_app/Starting%20Screens/signup_screen.dart';
import 'package:ott_app/constant/constant_color.dart';
import 'package:ott_app/guest_mode/head_of_guest_mode.dart';

class LoginSignupScreen extends StatefulWidget {
  const LoginSignupScreen({super.key});

  @override
  State<LoginSignupScreen> createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {
  //final ConstantColor  colorController = Get.put(ConstantColor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Constant.height * .8,
            width: Constant.height * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/jack1.jpg'),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: Get.height * .7),
            height: Constant.height * 1,
            width: Constant.height * 1,
            child: Container(
              height: Constant.height * .4,
              width: Constant.height * 1,
              decoration: BoxDecoration(
                  color: Colors.black,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 100,
                      spreadRadius: 80,
                      blurStyle: BlurStyle.normal,
                    )
                  ]
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: Constant.height * .4),
            alignment: Alignment.center,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: Constant.height * .12,
                  width: Constant.width * .24,
                  decoration: BoxDecoration(
                    color: Constant.color1,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(child: FaIcon(FontAwesomeIcons.play, size: 50, color: Colors.white)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Movies', style: TextStyle(fontSize: 50, color: Colors.white, letterSpacing: 0)),
                    Text('Watch', style: TextStyle(fontSize: 50,color: Constant.color1))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Watch unlimited movies, series & TV shows', style: TextStyle(color: Colors.white, fontSize: 18)),
                    Text('anytime, anywhere & anyway', style: TextStyle(color: Colors.white, fontSize: 18)),
                  ],
                ),
                SizedBox(height: Constant.height * .02),
                Container(
                  height: Constant.height * .075,
                  width: Constant.width * .85,
                  decoration: BoxDecoration(
                    color: Constant.color1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(onPressed: (){
                    Get.to(LoginScreen());
                  },
                    child: Center(child: Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black))),),
                ),
                SizedBox(height: Constant.height * .02),
                Container(
                  height: Constant.height * .075,
                  width: Constant.width * .85,
                  decoration: BoxDecoration(
                    color: Constant.color1,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(onPressed: (){
                    Get.to(SignupScreen());
                  },child: Center(child: Text('Signup', style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: Colors.black))),),
                ),
                SizedBox(height: Constant.height * .005),
                Row(
                    children: [
                      Expanded(
                          child: Divider(
                            indent: Get.width * .1,
                            endIndent: Get.width * .02,
                          )
                      ),
                      Text("or", style: TextStyle(fontSize: 25, color: Colors.white),),
                      Expanded(
                          child: Divider(
                            indent: Get.width * .02,
                            endIndent: Get.width * .1,
                          )
                      ),
                    ]
                ),
                SizedBox(height: Get.height * .005),
                Container(
                  height: Get.height * .07,
                  width: Get.width * .85,
                  decoration: BoxDecoration(
                    //color: Colors.purpleAccent.shade200,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Constant.color1, width: 2)
                  ),
                  child: Center(child: TextButton(onPressed: (){
                    Get.to(GuestHeadPage());
                  },child: Center(child: Text('Try as guest!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Constant.color1))),)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
