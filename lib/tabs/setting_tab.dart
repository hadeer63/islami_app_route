import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/myThemedata.dart';
import 'package:provider/provider.dart';

import '../bottom_sheet/language_bottom_sheet.dart';
import '../bottom_sheet/themeing_bottom_sheet.dart';
import '../provider/my_provider.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: TextStyle(color: MyThemeData.blackColor)),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(
                  pro.languageCode == "en"
                      ? AppLocalizations.of(context)!.english
                      : AppLocalizations.of(context)!.arabic,
                  style: TextStyle(color: MyThemeData.blackColor)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(AppLocalizations.of(context)!.themeing,
              style: TextStyle(color: MyThemeData.blackColor)),
          InkWell(
            onTap: () {
              showThemeingBottomSheet();
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 18),
              padding: EdgeInsets.symmetric(horizontal: 18),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: MyThemeData.primaryColor)),
              child: Text(
                "light",
                style: TextStyle(color: MyThemeData.blackColor),
              ),
            ),
          ),
        ],
      ),
    );
  }

  showThemeingBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        builder: (context) => ThemeingBottomSheet());
  }

  showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.transparent),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), topRight: Radius.circular(12))),
        builder: (context) => LanguageBottomSheet());
  }
}
