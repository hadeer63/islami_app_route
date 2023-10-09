import 'package:flutter/material.dart';
import 'package:islami_app/myThemedata.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Image.asset(
            "assets/images/radio_image.png",
            width: 300,
            height: 300,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "إذاعة القرآن الكريم",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: MyThemeData.blackColor, fontWeight: FontWeight.w500
                //fontWeight: FontWeight.normal),
                ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous_sharp,
                      color: MyThemeData.primaryColor,
                      size: 40,
                    ),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.white38),
                  ),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.play_arrow_rounded,
                        color: MyThemeData.primaryColor, size: 60),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.white38),
                  ),
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.skip_next_sharp,
                        color: MyThemeData.primaryColor, size: 40),
                    label: Text(""),
                    style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.white38),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
