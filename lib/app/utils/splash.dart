import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:j5pos/app/modules/home/views/home_view.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () => Get.to(() => HomeView()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/icon/j5posicon.png'),
          ),
        ),
      )),
    );
  }
}
