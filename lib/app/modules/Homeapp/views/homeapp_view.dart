import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';
import 'package:j5pos/app/utils/widget/primaryButton.dart';

import '../controllers/homeapp_controller.dart';

class HomeappView extends GetView<HomeappController> {
  final format = DateFormat.yMMMMd('en_US');
  final currency =
      NumberFormat.currency(locale: 'ID', symbol: 'Rp. ', decimalDigits: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height * 0.3,
            decoration: BoxDecoration(
              color: defaulColor.primaryClr,
            ),
          ),
          Container(
              padding: EdgeInsets.only(top: Get.height * 0.4),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                padding: EdgeInsets.all(20),
                primary: false,
                children: [
                  Content(
                    iconData: CupertinoIcons.macwindow,
                    title: 'Transaksi',
                    onPressed: () {},
                  ),
                  Content(
                    iconData: CupertinoIcons.shopping_cart,
                    title: 'Produk',
                    onPressed: () {},
                  ),
                  Content(
                    iconData: CupertinoIcons.settings,
                    title: 'Pengaturan',
                    onPressed: () {},
                  ),
                  Content(
                    iconData: CupertinoIcons.doc_chart,
                    title: 'Laporan',
                    onPressed: () {},
                  )
                ],
              )),
          Padding(
            padding:
                EdgeInsets.only(top: Get.height * 0.25, left: 37, right: 37),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.person,
                            color: defaulColor.landingClr,
                            size: 40,
                          ),
                        ),
                        Text(
                          'Usser',
                          style: primaryTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            format.format(DateTime.now()),
                            style: primaryTextStyle,
                          ),
                          Divider(
                            thickness: 2,
                          ),
                          Text(
                            'Total Penjualan',
                            style: primaryTextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            currency.format(27000000),
                            style: primaryTextStyle,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: primaryButton(
              onPressed: () {},
              content: 'Keluar',
              bgColor: defaulColor.primaryClrLght,
              txtColor: defaulColor.primaryClr,
            ),
          )
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  Content({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final IconData iconData;
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {},
      child: Container(
        height: 129,
        width: 130,
        decoration: BoxDecoration(
          color: defaulColor.primaryClrLght,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 100,
              color: defaulColor.primaryClr,
            ),
            Text(
              title,
              style: primaryTextStyle.copyWith(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
