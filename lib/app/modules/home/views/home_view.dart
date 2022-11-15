import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:j5pos/app/modules/Homeapp/views/homeapp_view.dart';
import 'package:j5pos/app/modules/home/views/login_view.dart';
import 'package:j5pos/app/modules/home/views/register_view.dart';
import 'package:j5pos/app/routes/app_pages.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';
import 'package:j5pos/app/utils/widget/primaryTextButton.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(color: defaulColor.primaryClr),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'J5 POS',
                  style: primaryTextStyle.copyWith(
                    color: defaulColor.landingClr,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Powered by PT. Jlima Digital Indonesia',
                  style: primaryTextStyle.copyWith(
                    color: defaulColor.landingClr,
                    // fontWeight: FontWeight.w900,
                    fontSize: defaulColor.font_size_small,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 88,
                ),
                Text(
                  'Kami Membantu Order Anda, Simpel',
                  style: primaryTextStyle.copyWith(
                    color: defaulColor.landingClr,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Aplikasi Kasir Terbaik dan Termurah di Indonesia',
                  style: primaryTextStyle.copyWith(
                    color: defaulColor.landingClr,
                    fontSize: defaulColor.font_size_normal,
                  ),
                ),
                Center(
                  child: Container(
                    height: 313,
                    width: 313,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage('assets/img/landing.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      primaryTextButton(
                        onPressed: () {
                          Get.to(() => LoginView());
                        },
                        content: 'Masuk',
                      ),
                      primaryTextButton(
                        onPressed: () {
                          Get.to(() => RegisterView());
                        },
                        content: 'Daftar',
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'atau',
                        style: primaryTextStyle.copyWith(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAll(HomeappView());
                            // Get.toNamed(Routes.HOMEAPP);
                          },
                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 20),
                                  height: 20,
                                  width: 20,
                                  child: Image.asset(
                                      'assets/icon/google-logo-9808.png'),
                                ),
                                Expanded(
                                  child: Text(
                                    'Login dengan Google',
                                    style: primaryTextStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: defaulColor.landingClr,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
