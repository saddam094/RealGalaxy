import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/constant/constant_color.dart';
import 'package:ott_app/guest_mode/guest_home_screen.dart';
import 'package:ott_app/guest_mode/guest_profile_screen.dart';
import 'package:ott_app/guest_mode/guest_search_screen.dart';

class GuestHeadPage extends StatefulWidget {
  const GuestHeadPage({super.key});

  @override
  State<GuestHeadPage> createState() => _GuestHeadPageState();
}

class _GuestHeadPageState extends State<GuestHeadPage> {
  final BottomBarData controller = Get.put(BottomBarData());

  var pageData = [GuestHomeScreen(), GuestSearchScreen(), GuestProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<BottomBarData>(
          builder: (newController) =>
              Stack(
                children: [
                  Container(
                    height: Get.height * .91,
                    color: Constant.color2,
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
