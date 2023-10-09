import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/myThemedata.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                provider.changeLanguage("en");
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.english,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.languageCode == "en"
                            ? MyThemeData.primaryColor
                            : MyThemeData.blackColor),
                  ),
                  Spacer(),
                  provider.languageCode == "en"
                      ? Icon(
                          Icons.done,
                          color: provider.languageCode == "en"
                              ? MyThemeData.primaryColor
                              : MyThemeData.blackColor,
                          size: 35,
                        )
                      : SizedBox.shrink()
                ],
              ),
            ),
            InkWell(
              onTap: () {
                provider.changeLanguage("ar");
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.languageCode == "ar"
                            ? MyThemeData.primaryColor
                            : MyThemeData.blackColor),
                  ),
                  Spacer(),
                  provider.languageCode == "en"
                      ? SizedBox.shrink()
                      : Icon(
                          Icons.done,
                          size: 35,
                          color: provider.languageCode == "ar"
                              ? MyThemeData.primaryColor
                              : MyThemeData.blackColor,
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
