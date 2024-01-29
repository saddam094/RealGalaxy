import 'package:flutter/material.dart';
import 'package:ott_app/constant/constant_color.dart';

class MostSearchedScreen extends StatefulWidget {
  const MostSearchedScreen({super.key});

  @override
  State<MostSearchedScreen> createState() => _MostSearchedScreenState();
}

class _MostSearchedScreenState extends State<MostSearchedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Most Searched', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: Constant.height,
        width: Constant.width,
        color: Constant.color2,
        child: GridView.builder(
          itemCount: ConstantData.manyMovieImg.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ConstantData.manyMovieImg[index].toString()),
                  fit: BoxFit.cover,
                )
              ),
            );
          },),
      ),
    );
  }
}
