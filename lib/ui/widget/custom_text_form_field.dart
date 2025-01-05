import 'package:flutter/material.dart';

import '../../theme/color.dart';
import '../../theme/fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hintText;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  const CustomTextFormField({
    super.key,
    required this.text,
    required this.hintText,
    this.validator,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: greenTextStyle.copyWith(fontWeight: semiBold),
          ),
          const SizedBox(height: 5),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
            onChanged: onChanged,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(4),
                borderSide: BorderSide(color: textFieldColor),
              ),
              hintText: hintText,
              hintStyle: greyTextStyle.copyWith(fontWeight: medium),
              contentPadding: const EdgeInsets.all(8),
            ),
          ),
        ],
      ),
    );
  }
}
