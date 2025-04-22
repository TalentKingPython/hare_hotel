import 'package:flutter/material.dart';
import 'package:hare_hotel/constant/colors.dart';

class OmnesText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final Color color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  const OmnesText(
    this.text, {
    super.key,
    this.fontSize = 12,
    this.fontWeight = FontWeight.w500,
    this.fontStyle = FontStyle.normal,
    this.color = colorBlack,
    this.textAlign,
    this.overflow,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        fontFamily: 'Omnes',
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        color: color,
      ),
    );
  }
}
