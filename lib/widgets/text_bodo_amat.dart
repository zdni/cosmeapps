import 'package:flutter/material.dart';

class TextBodoAmat extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign _textAlign;
  final Color textColor;
  const TextBodoAmat(this.fontSize, this.text, this._textAlign, this.textColor, {super.key});

  @override
  Widget build(BuildContext context) {
    // double h = MediaQuery.of(context).textScaleFactor;
    
    return Text(
      text,
      style: TextStyle(
        fontFamily: "BodoAmat",
        fontSize: fontSize,
        color: textColor,
      ),
      textAlign: _textAlign,
    );
  }
}