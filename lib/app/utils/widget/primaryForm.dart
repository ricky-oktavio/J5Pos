import 'package:flutter/material.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';

class primaryForm extends StatelessWidget {
  primaryForm({Key? key, this.title, this.hintText, this.obsecureText})
      : super(key: key);
  final String? title;
  final String? hintText;
  final bool? obsecureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: title!.isNotEmpty,
            child: Text(
              title!,
              style: primaryTextStyle.copyWith(
                fontSize: defaulColor.font_size_normal,
              ),
            ),
          ),
          TextField(
            obscureText: obsecureText!,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: primaryTextStyle.copyWith(
                fontSize: defaulColor.font_size_normal,
                fontStyle: FontStyle.italic,
              ),
              focusedBorder: InputBorder.none,
            ),
          ),
        ],
      ),
    );
  }
}
