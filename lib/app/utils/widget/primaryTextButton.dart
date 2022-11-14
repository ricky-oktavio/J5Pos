import 'package:flutter/material.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';

class primaryTextButton extends StatelessWidget {
  const primaryTextButton({
    Key? key,
    required this.onPressed,
    required this.content,
  }) : super(key: key);
  final void Function()? onPressed;
  final String content;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        content,
        style: primaryTextStyle.copyWith(
          color: defaulColor.landingClr,
          fontSize: defaulColor.font_size_normal,
        ),
      ),
    );
  }
}
