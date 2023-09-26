import 'package:flutter/material.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:islami_app/myThemedata.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
              title: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child:
                Text(args.title, style: Theme.of(context).textTheme.bodyLarge),
          )),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: MyThemeData.primaryColor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 1,
                    indent: 40,
                    endIndent: 40,
                    color: MyThemeData.primaryColor,
                  ),
                  itemBuilder: (context, index) {
                    return Center(
                        child: Text(
                      "${args.content[index]}(${index + 1})",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ));
                  },
                  itemCount: args.content.length,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
