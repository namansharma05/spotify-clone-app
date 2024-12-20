import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_clone/common/widgets/appbar/app_bar.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/presentation/auth/pages/signup.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.04,
        ),
      ),
      bottomNavigationBar: _signupText(context),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.06,
            horizontal: MediaQuery.of(context).size.width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            // _fullNameField(context),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height * 0.02,
            // ),
            _emailField(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            _passwordField(context),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            BasicAppButton(onPressed: () {}, title: 'Sign In'),
          ],
        ),
      ),
    );
  }

  Widget _registerText(context) {
    return Text(
      'Sign In',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: MediaQuery.of(context).size.width * 0.05,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget _emailField(context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Enter Email',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(context) {
    return TextField(
      decoration: const InputDecoration(
        hintText: 'Password',
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signupText(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Not A Member?",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          TextButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const Signup()));
              },
              child: Text('Register Now'))
        ],
      ),
    );
  }
}
