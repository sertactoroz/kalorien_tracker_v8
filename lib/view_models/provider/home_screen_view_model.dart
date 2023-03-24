import 'package:flutter/cupertino.dart';

class HomeScreenViewModel extends ChangeNotifier {
  int page = 0;
  setPage(int p) {
    page = p;
    notifyListeners();
  }
}
