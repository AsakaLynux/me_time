import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';

class CustomPlaceButton extends StatelessWidget {
  final String text;
  final EdgeInsets margin;
  const CustomPlaceButton({
    super.key,
    required this.text,
    this.margin = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 311,
      height: 60,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: optionColor,
      ),
      child: Text(
        text,
        style: blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
      ),
    );
  }
}
