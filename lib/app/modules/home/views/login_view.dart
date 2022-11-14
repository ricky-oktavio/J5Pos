import 'package:flutter/material.dart';
import 'package:j5pos/app/utils/default/colors.dart';
import 'package:j5pos/app/utils/default/style.dart';
import 'package:j5pos/app/utils/widget/primaryButton.dart';
import 'package:j5pos/app/utils/widget/primaryForm.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Login',
          style: primaryTextStyle.copyWith(color: defaulColor.landingClr),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaulColor.defaultPadding),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                'Silahkan login',
                style: primaryTextStyle.copyWith(
                  fontSize: defaulColor.font_size_large,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              primaryForm(
                title: 'Email / Username',
                hintText: 'masukkan email / username',
                obsecureText: false,
              ),
              primaryForm(
                title: 'Password',
                hintText: 'masukkan password',
                obsecureText: true,
              ),
              SizedBox(
                height: 25,
              ),
              primaryButton(
                onPressed: () {},
                content: 'Masuk / Login',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class primaryButton extends StatelessWidget {
//   const primaryButton({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {},
//       child: Text(
//         'Masuk / Login',
//         style: primaryTextStyle.copyWith(
//             fontSize: defaulColor.font_size_normal,
//             color: Colors.white),
//       ),
//       style: ElevatedButton.styleFrom(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(8),
//         ),
//       ),
//     );
//   }
// }

// class primaryForm extends StatelessWidget {
//   const primaryForm({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(
//         top: 10,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Username / Email',
//             style: primaryTextStyle.copyWith(
//               fontSize: defaulColor.font_size_normal,
//             ),
//           ),
//           TextField(
//             decoration: InputDecoration(
//                 hintText: 'masukkan username',
//                 hintStyle: primaryTextStyle.copyWith(
//                   fontSize: defaulColor.font_size_normal,
//                   fontStyle: FontStyle.italic,
//                 ),
//                 focusedBorder: InputBorder.none
//                 // border: InputBorder.none,
//                 ),
//           ),
//         ],
//       ),
//     );
//   }
// }
