import 'package:flutter/material.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';

class primaryButton extends StatelessWidget {
  primaryButton({
    Key? key,
    required this.onPressed,
    required this.content,
    this.bgColor,
    this.txtColor,
  }) : super(key: key);
  final void Function() onPressed;
  final String content;
  final Color? bgColor;
  final Color? txtColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        content,
        style: primaryTextStyle.copyWith(
            fontSize: defaulColor.font_size_normal,
            color: txtColor ?? Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor ?? defaulColor.primaryClr,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
