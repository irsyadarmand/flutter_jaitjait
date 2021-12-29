import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/screens/constants.dart';
import 'package:flutter_jaitjait/auth/sign_up_screen.dart';
import 'package:flutter_jaitjait/screens/home.dart';
import 'package:flutter_jaitjait/screens/welcome_screen.dart';

import 'components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: defaultPadding,
                      left: defaultPadding,
                      right: defaultPadding),
                  child: SingleChildScrollView(
                    child: SizedBox(
                      height: 250,
                      child: Image.asset(
                        "assets/icons/logo_jaitjait.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: bgstyleColor,
                  padding: const EdgeInsets.only(
                    left: defaultPadding * 2,
                    right: defaultPadding * 2,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome back!",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 5),
                      const Text("Sign in to continue"),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  child: SignInForm(
                    formKey: _formKey,
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: defaultPadding * 2,
                          left: defaultPadding * 2,
                          right: defaultPadding * 2,
                        ),
                        child: SizedBox(
                          width: 345,
                          child: Text(
                            "Forgot password?",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .caption!
                                .copyWith(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black45),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ),
                          );
                        }
                      },
                      child: Text("Sign In"),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpScreen(),
                    ),
                  ),
                  child: const Text(
                    "Create an Account",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: minorColor),
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
