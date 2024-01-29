import 'package:flutter/cupertino.dart';

class termsProvider with ChangeNotifier{
  bool terms = false;

  bool updatePermission(){
    terms = terms? false: true;
    notifyListeners();
    return terms;
  }

  bool selected = false;
  double heightval = 0.2;
  String lesMore = 'See More';
  void updateSelected(){
    selected = selected ? false : true;
    heightval = selected ? 0.41 : 0.2;
    lesMore = selected ? 'See Less' : 'See More';
    notifyListeners();
  }
}