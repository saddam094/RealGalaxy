import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ott_app/constant/constant_color.dart';
import 'package:ott_app/guest_mode/watch_screen/watch_screen.dart';

class HomeViewAllScreen extends StatefulWidget {
  final int Index;
  const HomeViewAllScreen({super.key,required this.Index});

  @override
  State<HomeViewAllScreen> createState() => _HomeViewAllScreenState();
}

class _HomeViewAllScreenState extends State<HomeViewAllScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ConstantData.Moviestypes[widget.Index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        backgroundColor:  Constant.color2,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: Constant.color2,
        child: GridView.builder(
          padding: EdgeInsets.all(5),
          itemCount: ConstantData.manyMovieImg.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Get.to(WatchScreen(index: index));
              },
              child: Container(
                height: Constant.height * .25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ConstantData.manyMovieImg[index]),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            );
          },

        ),
      ),
    );
  }
}
