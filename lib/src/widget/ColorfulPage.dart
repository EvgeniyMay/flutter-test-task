import "package:flutter/material.dart";
import "dart:math";

import "ReverseColorText.dart";

class ColorfulPage extends StatefulWidget {
  @override
  State<ColorfulPage> createState() => _ColorfulPageState();
}

class _ColorfulPageState extends State<ColorfulPage> {

  final Random random = Random();
  Color bgColorStart = Color.fromARGB(255, 0, 225, 225);
  Color bgColorEnd = Color.fromARGB(255, 30, 255, 255);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InkWell(
            onTap: updateBgColor,
            child: Container(
              //color: bgColor,
                child: ReverseColorText(bgColor: bgColorStart),
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [bgColorStart, bgColorEnd]
                    )
                )
            )
        )
    );
  }

  void updateBgColor() {
    setState(() {
      this.bgColorStart = getRandColor();

      this.bgColorEnd = Color.fromARGB(255,
          bgColorStart.red + 30,
          bgColorStart.green + 30,
          bgColorStart.blue + 30);
    });
  }

  Color getRandColor() {
    return Color.fromARGB(255,
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255));
  }
}
