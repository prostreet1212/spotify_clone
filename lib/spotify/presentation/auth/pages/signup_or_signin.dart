import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/configs/assets/app_vectors.dart';

class SignupOrSigninPage extends StatefulWidget {
  const SignupOrSigninPage({super.key});

  @override
  State<SignupOrSigninPage> createState() => _SignupOrSigninPageState();
}

class _SignupOrSigninPageState extends State<SignupOrSigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: SvgPicture.asset(AppVectors.topPattern),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SvgPicture.asset(AppVectors.bottomPattern),
          ),
        ],
      ),
    );
  }
}
