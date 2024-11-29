import 'package:bookly/core/util/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final Color backgroundColor;
  final BorderRadiusGeometry borderRadius;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  const CustomButton(
      {super.key,
      required this.buttonName,
      required this.backgroundColor,
      required this.borderRadius,
      required this.textColor,
      this.fontWeight = FontWeight.bold,
      this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
          ),
          child: Text(
            buttonName,
            style: Styles.textStyle18.copyWith(
                color: textColor, fontWeight: fontWeight, fontSize: fontSize),
          )),
    );
  }
}
