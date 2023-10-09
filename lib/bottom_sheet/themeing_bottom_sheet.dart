import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/myThemedata.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:provider/provider.dart';

class ThemeingBottomSheet extends StatelessWidget {
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
                provider.changeTheme(ThemeMode.dark);
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.modeApp == ThemeMode.dark
                            ? Theme.of(context).colorScheme.background
                            : MyThemeData.blackColor),
                  ),
                  Spacer(),
                  provider.modeApp == ThemeMode.dark
                      ? Icon(
                          Icons.done,
                          color: Colors.black45,
                          size: 35,
                        )
                      : SizedBox.shrink()
                ],
              ),
            ),
            InkWell(
              onTap: () {
                provider.changeTheme(ThemeMode.light);
              },
              child: Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.light,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: provider.modeApp == ThemeMode.light
                            ? Theme.of(context).colorScheme.background
                            : Colors.white),
                  ),
                  Spacer(),
                  provider.modeApp == ThemeMode.dark
                      ? SizedBox.shrink()
                      : Icon(
                          Icons.done,
                          size: 35,
                          color: MyThemeData.primaryColor,
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
