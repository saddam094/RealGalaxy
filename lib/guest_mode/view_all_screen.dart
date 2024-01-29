import 'package:flutter/material.dart';
import 'package:ott_app/constant/constant_color.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({super.key});

  @override
  State<ViewAllScreen> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hallo', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
        //backgroundColor:  Constant.color2,
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(5),
            itemCount: 10,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: Constant.height * .25,
                color: Colors.greenAccent,
              );
            },

      ),
    );
  }
}
