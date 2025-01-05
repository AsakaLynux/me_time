import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';

class CustomButton extends StatelessWidget {
  final double width;
  final double height;
  final EdgeInsets margin;
  final String text;
  final double radius;
  final Function() function;

  const CustomButton({
    super.key,
    required this.width,
    required this.text,
    required this.function,
    this.height = 48,
    this.margin = EdgeInsets.zero,
    this.radius = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      child: TextButton(
        onPressed: function,
        style: TextButton.styleFrom(
          backgroundColor: buttonBackgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
