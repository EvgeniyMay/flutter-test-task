import "package:flutter/material.dart";

class ReverseColorText extends StatefulWidget {

  final Color bgColor;
  final String text = "Hey there";

  ReverseColorText({Key key, this.bgColor = Colors.black}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ReverseColorTextState();
}

class _ReverseColorTextState extends State<ReverseColorText> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Text(
                widget.text,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: getTextColor(),
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(color: Colors.black, blurRadius: 3, offset: Offset(3, 3))
                    ]
                )
            )
        )
    );
  }

  Color getTextColor() {
    return Color.fromARGB(255,
        widget.bgColor.red + 127,
        widget.bgColor.green + 127,
        widget.bgColor.blue + 127);
  }
}