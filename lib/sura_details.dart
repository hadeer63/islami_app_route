import 'package:flutter/material.dart';
import 'package:islami_app/myThemedata.dart';
import 'package:islami_app/provider/sura_details_provider.dart';
import 'package:islami_app/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'Sura';

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<SuraDetailsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (pro.verses.isEmpty) {
      pro.loadFiles(args.index);
    }
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
              title: Text(args.name,
                  style: Theme.of(context).textTheme.bodyLarge)),
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
                      pro.verses[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ));
                  },
                  itemCount: pro.verses.length,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
