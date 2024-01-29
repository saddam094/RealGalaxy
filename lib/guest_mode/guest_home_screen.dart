import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/constant/constant_color.dart';
import 'package:ott_app/guest_mode/View%20All/view_all_for_home_screen.dart';
import 'package:ott_app/guest_mode/view_all_screen.dart';

class GuestHomeScreen extends StatefulWidget {
  const GuestHomeScreen({super.key});

  @override
  State<GuestHomeScreen> createState() => _GuestHomeScreenState();
}

class _GuestHomeScreenState extends State<GuestHomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Constant.height * .02, left: Constant.height * .02, right: Constant.height * .02),
      child: Column(
        children: [
          Row(
            children: [
              Text('OTT', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
              Text(' Videos', style: TextStyle(color: Constant.color1, fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
          // Top scroll view ===================================================
          Container(
            height: Constant.height * .08,
            width: Constant.width,
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemCount: ConstantData.dashboardOption.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: Constant.height * .05,
                      width: Constant.width * .3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Constant.color1,
                          width: 2,
                        )
                      ),
                      child: TextButton( onPressed: (){

                      },child: Text(ConstantData.dashboardOption[index], style: TextStyle(fontSize: 18, color: Constant.color1, fontWeight: FontWeight.bold)),),
                    ),
                    SizedBox(width: Constant.width * .05),
                  ],
                );
              },),
          ),
          SizedBox(height: Constant.height * .01),
          Container(
            height:  Constant.height * .745,
            //color: Colors.greenAccent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Movies slider automatic ===================================
                  CarouselSlider.builder(
                      itemCount: ConstantData.movieImg.length,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          height: Constant.height * .4,
                          width: Constant.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:  AssetImage(ConstantData.movieImg[index]),
                                fit: BoxFit.cover,
                              )
                          ),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 1.0,
                        initialPage: 0,
                        viewportFraction: 1.0,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayInterval: Duration(seconds: 3),

                      )
                  ),
                  SizedBox(height: Constant.height * .01),
                  // New Releases ==============================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[0],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 0));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                      image: AssetImage(ConstantData.movieImg[index]),
                                      fit: BoxFit.cover,
                                    )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Popular Movies ============================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[1],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 1));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Web Series ================================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[2],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 2));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // TV Shows ==================================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[3],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 3));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Romance Shows & Movies ====================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[4],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 4));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Recommended Movies ========================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[5],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 5));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Mystry & thriller Movies ==================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[6],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 6));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Drama Movies ==============================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[7],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 7));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Comedy Movies =============================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[8],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 8));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Horror Movies =============================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[9],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 9));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: Constant.height * .01),
                  // Categories ================================================
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(ConstantData.Moviestypes[10],style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                          TextButton(onPressed: (){
                            Get.to(HomeViewAllScreen(Index: 10));
                          }, child: Text('view all',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                        ],
                      ),
                      Container(
                        height: Constant.height * .3,
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
                                        image: AssetImage(ConstantData.movieImg[index]),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                ),
                                SizedBox(width: Constant.width * .05),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}



class Guest1 extends StatefulWidget {
  const Guest1({super.key});

  @override
  State<Guest1> createState() => _Guest1State();
}

class _Guest1State extends State<Guest1> {
  List<String> dashboardOption = ['All','Movies','TV Shows','Web Series','Action','Drama','Romantic','Thriller','Comedy','Horror','See all'];
  List<String> sectionOption = ['New Releases','Popular Movies','Web Series','TV Shows','Romance Shows & Movies','Mystry & Thriller Movies','Drama Movies','Comedy Movies','Horror Movies','Categories'];
  List<String> movieImg = [
    'assets/images/dunki.jpg',
    'assets/images/salar.jpg',
    'assets/images/animal.jpg',
    'assets/images/bhai jaan.jpg',
    'assets/images/jawan.jpg',
    'assets/images/rocky bhai.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Constant.height * .02, left: Constant.height * .02, right: Constant.height * .02),
      child: Column(
        children: [
          Row(
            children: [
              Text('OTT', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
              Text(' Videos', style: TextStyle(color: Constant.color1, fontSize: 25, fontWeight: FontWeight.bold)),
            ],
          ),
          // Top scroll view ===================================================
          Container(
            height: Constant.height * .08,
            width: Constant.width,
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis.horizontal,
              itemCount: dashboardOption.length,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: Constant.height * .05,
                      width: Constant.width * .3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Constant.color1,
                            width: 2,
                          )
                      ),
                      child: Center(child: Text(dashboardOption[index], style: TextStyle(fontSize: 20, color: Constant.color1, fontWeight: FontWeight.bold))),
                    ),
                    SizedBox(width: Constant.width * .05),
                  ],
                );
              },),
          ),
          SizedBox(height: Constant.height * .01),
          Container(
            height:  Constant.height * .745,
            //color: Colors.greenAccent,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Movies slider automatic ===================================
                  CarouselSlider.builder(
                      itemCount: movieImg.length,
                      itemBuilder: (context, index, realIndex) {
                        return Container(
                          height: Constant.height * .35,
                          width: Constant.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:  AssetImage(movieImg[index]),
                                fit: BoxFit.cover,
                              )
                          ),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: true,
                        enlargeCenterPage: true,
                        aspectRatio: 1.2,
                        initialPage: 0,
                        viewportFraction: 1,
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayInterval: Duration(seconds: 3),
                      )
                  ),
                  // New Releases ==============================================
                  Container(
                    height: Constant.height * 2,
                    //color: Colors.greenAccent,
                    child: ListView.builder(
                      itemCount: sectionOption.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(sectionOption[index], style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                                TextButton(onPressed: (){
                                  Get.to(ViewAllScreen(),arguments: index);
                                }, child: Text('View All', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))
                                )
                              ],
                            ),
                            Container(
                              height: Constant.height * .3,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: movieImg.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      Container(
                                        height: Constant.height * .26,
                                        width: Constant.width * .36,
                                        decoration: BoxDecoration(
                                          //color: Colors.white,
                                            image: DecorationImage(
                                              image: AssetImage(movieImg[index]),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width: Constant.width * .05),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: Constant.height * .01),
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
    );
  }
}


