import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/Starting%20Screens/login_screen.dart';
import 'package:ott_app/constant/constant_color.dart';
import 'package:provider/provider.dart';

import '../constant/provider_page.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //final ConstantColor  colorController = Get.put(ConstantColor());

  @override
  Widget build(BuildContext context) {
    final termProvider = Provider.of<termsProvider>(context);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(top: Get.height * .05, left: Get.width * .05, right: Get.width * .05),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Text('Register Now', style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
              SizedBox(height: Get.height * .050),
              TextField(
                keyboardType: TextInputType.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
                decoration: InputDecoration(
                    hintText: 'Full Name',
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
              ),
              SizedBox(height: Get.height * .01),
              TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                ),
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
              ),
              SizedBox(height: Get.height * .01),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
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
              ),
              SizedBox(height: Get.height * .01),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: '.',
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    hintText: 'Confirm Password',
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
                children: [
                  Checkbox(
                    side: BorderSide(color: Colors.white, width: 2, strokeAlign: 2),
                    value: termProvider.terms,
                    onChanged: (bool? value){
                      termProvider.updatePermission();
                    }
                  ),
                  TextButton(onPressed: (){

                  }, child: Text('Agree all statement or terms & condition', style: TextStyle(fontSize: 15 ,color: Colors.white),))
                ],
              ),
              SizedBox(height: Get.height * .01),
              Container(
                height: Get.height * .075,
                width: Get.width * .85,
                decoration: BoxDecoration(
                  color: Colors.purpleAccent.shade200,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(onPressed: (){
                  //Get.to(LoginScreen());
                },
                  child: Center(child: Text('Register', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Constant.color1))),),
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
              Text('Register with', style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
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
                  Text('Already have an account ? ', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  TextButton(onPressed: (){
                    Get.to(LoginScreen());
                  },
                      child: Text('Login', style: TextStyle(color: Constant.color1, fontSize: 18, fontWeight: FontWeight.bold)))
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}


