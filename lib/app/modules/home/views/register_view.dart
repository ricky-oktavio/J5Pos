import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: primaryTextStyle.copyWith(color: defaulColor.landingClr),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
    );
  }
}
