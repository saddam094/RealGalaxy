import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/Starting%20Screens/login_signup_button_screen.dart';

import '../../constant/constant_color.dart';

class WatchScreen extends StatefulWidget {
  final int index;
  const WatchScreen({super.key, required this.index});

  @override
  State<WatchScreen> createState() => _WatchScreenState();
}

class _WatchScreenState extends State<WatchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Constant.height * 1,
        width: Constant.width * 1,
        color: Constant.color2,
        child: Stack(
          children: [
            Container(
              height: Constant.height * .4,
              width: Constant.width * 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ConstantData.manyMovieImg[widget.index]),
                  fit: BoxFit.cover,
                )
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: Constant.height * .4),
              height: Constant.height * 1,
              width: Constant.width * 1,
              child: Container(
                height: Constant.height * .65,
                width: Constant.width * 1,
                decoration: BoxDecoration(
                    color: Constant.color2,
                  boxShadow: [
                    BoxShadow(
                      color: Constant.color2,
                      spreadRadius: 10,
                      blurStyle: BlurStyle.normal,
                      blurRadius:10,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("IMDB 8/10", style: TextStyle(color: Colors.white, fontSize: 11),),
                        Text("|",style: TextStyle(color: Constant.color1),),
                        Text("Heartwarming,  Science Fiction,  Comedy", style: TextStyle(color: Colors.white, fontSize: 11),),
                        Text("|",style: TextStyle(color: Constant.color1),),
                        Text("1h 27m", style: TextStyle(color: Colors.white, fontSize: 11),),
                        Text("|",style: TextStyle(color: Constant.color1),),
                        Text("2023", style: TextStyle(color: Colors.white, fontSize: 11),),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(Constant.height * .02),
                      height: Constant.height * .574,
                      width:  Constant.width * 1,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: Constant.height * .07,
                              width: Constant.width * .8,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton(
                                onPressed: (){
                                  Get.offAll(LoginSignupScreen());
                                },child: Text("Login to Watch", style: TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    IconButton(onPressed: (){

                                    }, icon: Icon(Icons.add, color: Colors.white,size: 35,)),
                                    Text("Watchlist", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(onPressed: (){

                                    }, icon: Icon(Icons.movie_filter_outlined, color: Colors.white, size: 35,)),
                                    Text("Trailer", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Column(
                                  children: [
                                    IconButton(onPressed: (){

                                    }, icon: Icon(Icons.share, color: Colors.white, size: 35,)),
                                    Text("Share", style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Text("Believe the impossible. Discover the incredible.", style: TextStyle(color: Colors.grey, fontSize: 20,),),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Audio available in : ", style: TextStyle(color: Colors.grey, fontSize: 20),),
                                Text("Hindi", style: TextStyle(color: Colors.grey, fontSize: 20),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            new Divider(thickness: 1, color: Colors.grey,),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text("Viewers also like this", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: Constant.height * .16,
                              width: Constant.width * 1,
                              color: Colors.transparent,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: ConstantData.movieImg.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      Container(
                                        height: Constant.height * .15,
                                        width: Constant.width * .3,
                                        decoration: BoxDecoration(
                                          //color: Colors.white,
                                          borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: AssetImage(ConstantData.movieImg[index]),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width: Constant.width * .03),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 10,),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("Cast & Crew", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Details from IMDB", style: TextStyle(color: Colors.grey, fontSize: 18),),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: Constant.height * .2,
                              color: Colors.transparent,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: ConstantData.movieImg.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      Container(
                                        height: Constant.height * .26,
                                        width: Constant.width * .36,
                                        decoration: BoxDecoration(
                                          //color: Colors.white,
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/moviepic/saddam.jpg'),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                        child: Container(
                                          height: Constant.height * .05,
                                        )
                                      ),
                                      SizedBox(width: Constant.width * .05),
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
