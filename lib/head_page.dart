import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/bottom_bar_screens/home_screen.dart';
import 'package:ott_app/bottom_bar_screens/profile_screen.dart';
import 'package:ott_app/bottom_bar_screens/search_screen.dart';
import 'package:ott_app/bottom_bar_screens/watchlist.dart';

class HeadPage extends StatefulWidget {
  const HeadPage({super.key});

  @override
  State<HeadPage> createState() => _HeadPageState();
}

class _HeadPageState extends State<HeadPage> {
  final BottomBarData controller = Get.put(BottomBarData());
  
  var pageData = [HomeScreen(), WatchlistScreen(), SearchScreen(), ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<BottomBarData>(
          builder: (newController) =>
              Stack(
                children: [
                  Container(
                    height: 610,
                    color: Colors.black,
                  ),
                  pageData[controller.selectedBottom.value],
                ],
              ),
        ),
        bottomNavigationBar: GetBuilder<BottomBarData>(
          builder: (newController) =>
              BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black,
                iconSize: 40,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.heart_broken_sharp), label: 'Wishlist'),
                  BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
                ],
                currentIndex: controller.selectedBottom.value,
                onTap: (setValue){
                  controller.changeSelectedBottomBar(setValue);
                },
              ),
        )
    );
  }
}

class BottomBarData extends GetxController{
  RxInt selectedBottom = 0.obs;

  void changeSelectedBottomBar (int value){
    selectedBottom.value = value;
    update();
  }
}
