import 'package:flutter/material.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';
import 'package:j5pos/app/utils/widget/primaryButton.dart';
import 'package:j5pos/app/utils/widget/primaryForm.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Register',
          style: primaryTextStyle.copyWith(color: defaulColor.landingClr),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: defaulColor.defaultPadding,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 75,
              ),
              Text(
                'Silahkan login',
                style: primaryTextStyle.copyWith(
                  fontSize: defaulColor.font_size_large,
                ),
              ),
              primaryForm(
                title: 'Nama',
                hintText: 'Masukkan nama anda',
                obsecureText: false,
              ),
              primaryForm(
                title: 'Username',
                hintText: 'Masukkan username anda',
                obsecureText: false,
              ),
              primaryForm(
                title: 'Email',
                hintText: 'Masukkan email anda',
                obsecureText: false,
              ),
              primaryForm(
                title: 'Password',
                hintText: 'Masukkan password anda',
                obsecureText: true,
              ),
              primaryForm(
                title: 'Ulangi password',
                hintText: 'Ulangi password anda',
                obsecureText: true,
              ),
              SizedBox(
                height: 25,
              ),
              primaryButton(
                onPressed: () {},
                content: 'Daftar',
              )
            ],
          ),
        ),
      ),
    );
  }
}
