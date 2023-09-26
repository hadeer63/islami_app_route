import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:islami_app/myThemedata.dart';

class AhadethTab extends StatelessWidget {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    loadHadeth();
    return Column(
      children: [
        Image.asset("assets/images/ahadeth_bg.png"),
        Divider(
          thickness: 3,
          color: MyThemeData.primaryColor,
        ),
        Text("Ahadeth",
            style: TextStyle(
              color: MyThemeData.blackColor,
            )),
        Divider(
          thickness: 3,
          color: MyThemeData.primaryColor,
        ),
        Expanded(
            child: ListView.separated(
          separatorBuilder: (context, index) => Divider(
            thickness: 1,
            indent: 40,
            endIndent: 40,
            color: MyThemeData.primaryColor,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, HadethDetails.routeName,
                    arguments: allAhadeth[index]);
              },
              child: Center(
                  child: Text(
                allAhadeth[index].title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              )),
            );
          },
          itemCount: allAhadeth.length,
        ))
      ],
    );
  }

  // void loadHadeth()async{
  //  String Ahadeth= await rootBundle.loadString("assets/files/ahadeth.txt");
  // } or
  void loadHadeth() {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split("#");
      for (int i = 0; i < ahadethList.length; i++) {
        String HadethOne = ahadethList[i];
        List<String> hadethOneLines = HadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        HadethModel hadethModel = HadethModel(title, content);
        print(hadethModel.title);
        allAhadeth.add(hadethModel);
      }
    }).catchError((e) {
      print(e.toString());
    });
  }
}
