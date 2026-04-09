import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/appbar/app_bar.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
          title: SvgPicture.asset(
        AppVectors.logo,
        height: 40,
        width: 40,
      )),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
        child: Column(
          children: [
            _registerText(),
            const SizedBox(
              height: 30,
            ),
            _fullNameField(context)
          ],
        ),
      ),
    );
  }
}

Widget _registerText() {
  return const Text(
    "Register",
    style: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
    ),
    textAlign: TextAlign.center,
  );
}

Widget _fullNameField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(
      hintText: "Full Name",
    ),
  );
}
