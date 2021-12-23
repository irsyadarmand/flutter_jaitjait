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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: defaultPadding),
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
                  Row(
                    children: [
                      Text(
                        "Welcome back!",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: defaultPadding),
                        child: Text(
                          "Sign in to continue",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontWeight: FontWeight.normal),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  SignInForm(
                    formKey: _formKey,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: defaultPadding * 2),
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
                      )
                    ],
                  ),
                  const SizedBox(height: defaultPadding),
                  SizedBox(
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
      ),
    );
  }
}
