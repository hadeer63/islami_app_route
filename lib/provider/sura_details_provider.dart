import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier {
  List<String> verses = [];

  loadFiles(int index) async {
    String file = await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = file.split("\n");
    print(lines);
    verses = lines;
    notifyListeners();
  }
}
