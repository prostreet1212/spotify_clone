import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/appbar/app_bar.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(AppVectors.logo, height: 40, width: 40),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(height: 50),
            _fullNameField(context),
            SizedBox(height: 20),
            _emailField(context),
            SizedBox(height: 20),
            _passwordField(context),
            SizedBox(height: 20),
            BasicAppButton(onPressed: () {}, title: 'Create Account'),
          ],
        ),
      ),
    );
  }
}

Widget _registerText() {
  return Text(
    'Register',
    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    textAlign: TextAlign.center,
  );
}

Widget _fullNameField(context) {
  return TextField(
    decoration: InputDecoration(
      hintText: 'Full Name',
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _emailField(BuildContext context) {
  return TextField(
    //controller: _email,
    decoration: const InputDecoration(
      hintText: 'Enter Email',
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}

Widget _passwordField(BuildContext context) {
  return TextField(
    //controller: _password,
    decoration: const InputDecoration(
      hintText: 'Password',
    ).applyDefaults(Theme.of(context).inputDecorationTheme),
  );
}
