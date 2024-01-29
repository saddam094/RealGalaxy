import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/Starting%20Screens/signup_screen.dart';
import 'package:ott_app/constant/constant_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //final ConstantColor  colorController = Get.put(ConstantColor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: Get.height * .1, left: Get.width * .05, right: Get.width * .05),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text('Login', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: Get.height * .050),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white60,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Constant.color1,
                      width: 2,
                    )
                  )
                ),
                onTap: () {

                },
              ),
              SizedBox(height: Get.height * .01),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white60,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Constant.color1,
                          width: 2,
                        )
                    )
                ),
                onTap: () {

                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  TextButton(onPressed: (){

                  },
                    child: Text('Forgot Password', style: TextStyle(color: Colors.white, fontSize: 18),)
                  )
                ],
              ),
              SizedBox(height: Get.height * .01),
              Container(
                height: Get.height * .075,
                width: Get.width * .85,
                decoration: BoxDecoration(
                  color: Constant.color1,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(onPressed: (){
                  //Get.to(LoginScreen());
                },
                  child: Center(child: Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black))),),
              ),
              SizedBox(height: Get.height * .01),
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
              SizedBox(height: Get.height * .01),
              Text('Login with', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: Get.height * .01),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: Get.height * .050,
                    width: Get.width * .1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/Google.png'),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Container(
                    height: Get.height * .050,
                    width: Get.width * .1,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Facebook.png'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                  Container(
                    height: Get.height * .070,
                    width: Get.width * .14,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/Twitter.png'),
                          fit: BoxFit.cover,
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: Get.height * .01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don`t have an account ? ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: (){
                    Get.to(SignupScreen());
                  },
                    child: Text('Register', style: TextStyle(color: Constant.color1, fontSize: 18, fontWeight: FontWeight.bold)))
                ],
              ),
              SizedBox(height: Get.height * .005),
              Text('Need help ?', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New to ott video ? ', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: (){
                    Get.to(SignupScreen());
                  },
                      child: Text('Register Now', style: TextStyle(color: Constant.color1, fontSize: 18, fontWeight: FontWeight.bold)))
                ],
              ),
              SizedBox(height: Get.height * .01),
              //Center(child: Text('Secure your acces : Login with enhanced privacy\nfeatures, including captcha verification, on our\nplatform', style: TextStyle(color: Colors.white),))
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Secure your acces : Login with enhanced privacy', style: TextStyle(color: Colors.white)),
                  Text('features, including captcha verification, on our', style: TextStyle(color: Colors.white)),
                  Text('platform', style: TextStyle(color: Colors.white)),
                ],
              )
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
