import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/myThemedata.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index = 0;
  List<String> prays = [
    "الله اكبر", //0
    "الحمدلله", //1
    "سبحان الله", //2
    "سبحان الله وبحمده", //3
    "سبحان الله العظيم", //4
    "لا اله الا الله", //5
    "لا حول ولا قوه الا بالله", //6
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/sebha2.png",
            width: 150,
            height: 250,
          ),
          Text(
            "عدد التسبيحات",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: MyThemeData.blackColor, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFFB7935F),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(
                  child: Text(
                    "$count",
                    style: GoogleFonts.aladin(
                        color: MyThemeData.blackColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                IncrementCounter();
              },
              child: Text(
                prays[index],
                style: GoogleFonts.aladin(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size.fromHeight(50),
                  primary: Color(0xFFB7935F),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))))
        ],
      ),
    );
  }

  void IncrementCounter() {
    setState(() {
      count++;
      if (index == 0 && count == 31) {
        index = 1;
        count = 0;
      } else if (index == 1 && count == 31) {
        index = 2;
        count = 0;
      } else if (index == 2 && count == 31) {
        index = 3;
        count = 0;
      } else if (index == 3 && count == 31) {
        index = 4;
        count = 0;
      } else if (index == 4 && count == 31) {
        index = 5;
        count = 0;
      } else if (index == 5 && count == 31) {
        index = 6;
        count = 0;
      } else if (index == 6 && count == 31) {
        index = 0;
        count = 0;
      }
    });
  }
}
