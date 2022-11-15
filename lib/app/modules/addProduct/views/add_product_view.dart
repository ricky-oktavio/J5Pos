import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:j5pos/app/modules/addProduct/views/add.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';
import 'package:j5pos/app/utils/widget/primaryButton.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Tambah produk',
            style: primaryTextStyle.copyWith(
              color: defaulColor.landingClr,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              primaryButton(
                onPressed: () {
                  Get.to(() => Add());
                },
                content: 'Tambah produk',
              ),
              primaryButton(
                onPressed: () {},
                content: 'Lihat produk',
              ),
            ],
          ),
        ));
  }
}
