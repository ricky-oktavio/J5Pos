import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';
import 'package:j5pos/app/utils/widget/primaryButton.dart';
import 'package:j5pos/app/utils/widget/primaryForm.dart';

class Add extends StatelessWidget {
  const Add({super.key});

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
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaulColor.defaultPadding,
            vertical: defaulColor.defaultPadding,
          ),
          children: [
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: defaulColor.textClr,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: defaulColor.textClr,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  primaryButton(
                    onPressed: () {},
                    content: 'Tambah Foto Produk',
                  )
                ],
              ),
            ),
            primaryForm(
              title: 'Nama produk',
              hintText: 'Isi nama produk',
              obsecureText: false,
            ),
            primaryForm(
              title: 'Harga produk',
              hintText: 'Isi harga produk',
              obsecureText: false,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      border: Border.all(color: defaulColor.textClr),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kategori produk',
                        style: primaryTextStyle,
                      ),
                      Icon(CupertinoIcons.chevron_down)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
