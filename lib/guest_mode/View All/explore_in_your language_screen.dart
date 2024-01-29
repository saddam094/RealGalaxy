import 'package:flutter/material.dart';
import 'package:ott_app/constant/constant_color.dart';

class ExploreInYourLanguageScreen extends StatefulWidget {
  const ExploreInYourLanguageScreen({super.key});

  @override
  State<ExploreInYourLanguageScreen> createState() => _ExploreInYourLanguageScreenState();
}

class _ExploreInYourLanguageScreenState extends State<ExploreInYourLanguageScreen> {
  List<String> languages = ['Hindi','English','Tamil','Bangoli','Malayalam','Kannada','Telugu'];
  List<String> languageSymbols = ['न','E','வ','ন','ഹ','ಹ',' హ'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore in your language', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: Constant.height,
        width: Constant.width,
        color: Constant.color2,
        child: GridView.builder(
          itemCount: languages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){

              },
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/language background.jpg'),
                      fit: BoxFit.cover,
                    ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(languageSymbols[index], style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
                    Text(languages[index], style: TextStyle(fontSize: 20, color: Colors.white),)
                  ],
                ),
              ),
            );
          },),
      ),
    );
  }
}
