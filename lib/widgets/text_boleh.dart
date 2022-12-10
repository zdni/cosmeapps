import 'package:flutter/material.dart';

class TextBoleh extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign _textAlign;
  final Color textColor;
  const TextBoleh(this.fontSize, this.text, this._textAlign, this.textColor, {super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).textScaleFactor;
    
    return Text(
      text,
      style: TextStyle(
        fontFamily: "Boleh",
        fontSize: fontSize*h,
        color: textColor,
      ),
      textAlign: _textAlign,
    );
  }
}