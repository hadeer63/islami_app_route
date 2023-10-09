import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/hadeth_details.dart';
import 'package:islami_app/home.dart';
import 'package:islami_app/myThemedata.dart';
import 'package:islami_app/provider/my_provider.dart';
import 'package:islami_app/provider/sura_details_provider.dart';
import 'package:islami_app/splash_screen.dart';
import 'package:islami_app/sura_details.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(pro.languageCode),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      themeMode: pro.modeApp,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => MyProvider()),
    ChangeNotifierProvider(create: (context) => SuraDetailsProvider()),
  ], child: const MyApp()));
}
