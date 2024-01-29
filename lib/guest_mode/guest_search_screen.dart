import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/constant/constant_color.dart';
import 'package:ott_app/guest_mode/View%20All/explore_in_your%20language_screen.dart';
import 'package:ott_app/guest_mode/View%20All/most_searched_screen.dart';
import 'package:provider/provider.dart';

import '../constant/provider_page.dart';


class GuestSearchScreen extends StatefulWidget {
  const GuestSearchScreen({super.key});

  @override
  State<GuestSearchScreen> createState() => _GuestSearchScreenState();
}

class _GuestSearchScreenState extends State<GuestSearchScreen> {
  //final SearchData controller1 = Get.put(SearchData());


  List<String> languages = ['Hindi','English','Tamil','Bangoli','Malayalam','Kannada','Telugu'];
  List<String> languageSymbols = ['न','E','வ','ন','ഹ','ಹ',' హ'];

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
    final termProvider = Provider.of<termsProvider>(context);
    return Container(
      height: Constant.height * .9,
      width: Constant.width,
      padding: EdgeInsets.only(top: Constant.height * .02, left: Constant.height * .02, right: Constant.height * .02),
      color: Colors.transparent,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Constant.height * .01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Search',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
                SizedBox(width: Constant.width * .005,)
              ],
            ),
            SizedBox(height: Constant.height * .01),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search by actor, title...',
                hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search, color: Colors.black, size: 40,),
                suffixIcon: Icon(Icons.mic, color: Colors.black, size: 40,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                )
              ),
            ),
            SizedBox(height: Constant.height * .01),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Most Searched',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: (){
                      Get.to(MostSearchedScreen());
                    }, child: Text('View All',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                  ],
                ),
                Container(
                  height: Constant.height * .2,
                  color: Colors.transparent,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: movieImg.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: Constant.height * .18,
                            width: Constant.width * .36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
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

              ],
            ),
            SizedBox(height: Constant.height * .01),
            // Generes =========================================================
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Genres',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: Constant.height * .01),
            Container(
                height: Constant.height * termProvider.heightval,
                width: Constant.width,
                //color: Colors.blue,
                child: termProvider.selected ?
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Action',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Anime',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constant.height * .01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Comedy',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Documentry',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constant.height * .01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Drama',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Fantasy',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constant.height * .01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Horror',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Kids',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constant.height * .01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Mystry',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Romance',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constant.height * .01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Science Fiction',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        SizedBox(width: Constant.width * .00005,)
                      ],
                    ),
                  ],
                ) :
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Action',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Anime',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constant.height * .01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Comedy',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Documentry',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: Constant.height * .01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Drama',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                        Container(
                          height: Constant.height * .06,
                          width: Constant.width * .43,
                          decoration: BoxDecoration(
                            color: Constant.color3,
                            borderRadius: BorderRadius.circular(2),
                          ),
                          child: TextButton(
                            onPressed: (){

                            }, child: Center(child: Text('Fantasy',style: TextStyle(fontSize: 20, color: Colors.white),)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
            ),
            SizedBox(height: Constant.height * .01),
            Container(
              height: Constant.height * .06,
              width: Constant.width * .4,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: TextButton(onPressed: (){
                termProvider.updateSelected();
              }, child: Text(termProvider.lesMore, style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold))),
            ),
            // Language ========================================================
            SizedBox(height: Constant.height * .01),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Explore in Your Language',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                    TextButton(onPressed: (){
                      Get.to(ExploreInYourLanguageScreen());
                    }, child: Text('View All',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)))
                  ],
                ),
                Container(
                  height: Constant.height * .2,
                  color: Colors.transparent,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: languages.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Container(
                            height: Constant.height * .18,
                            width: Constant.width * .36,
                            padding: EdgeInsets.only(top: Constant.height * .02),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                //color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/language background.jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            child: Column(
                              children: [
                                Text(languageSymbols[index], style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                                Text(languages[index], style: TextStyle(fontSize: 20, color: Colors.white),)
                              ],
                            ),
                          ),
                          SizedBox(width: Constant.width * .05),
                        ],
                      );
                    },
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
