import 'package:dalel/core/uitils/app_colors.dart';
import 'package:dalel/core/uitils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
        left: 16,
        right: 16,
      ),
      child: TextField(
          decoration: InputDecoration(
        labelText: text,
        labelStyle: TextStyles.poppins400style12.copyWith(
          fontWeight: FontWeight.w200,
        ),
        focusedBorder: getOutLineBorder(),
        enabledBorder: getOutLineBorder(),
        border: getOutLineBorder(),
      )),
    );
  }
}

OutlineInputBorder getOutLineBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: AppColors.lightGrey,
      ));
}
