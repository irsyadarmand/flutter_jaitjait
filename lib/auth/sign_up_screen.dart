import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/screens/constants.dart';
import 'package:flutter_jaitjait/auth/sign_in_screen.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
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
                    left: defaultPadding * 2,
                    right: defaultPadding * 2,
                  ),
                  child: SizedBox(
                    height: 120,
                    child: Image.asset(
                      "assets/icons/logo_jaitjait.png",
                      fit: BoxFit.contain,
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
                        "Create an Account!",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(fontWeight: FontWeight.w500),
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 5),
                      const Text("Start a healthy joutney with us"),
                    ],
                  ),
                ),
                const SizedBox(height: defaultPadding),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2),
                  child: SignUpForm(
                    formKey: _formKey,
                  ),
                ),
                const SizedBox(height: defaultPadding * 2),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2),
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignInScreen(),
                            ),
                          );
                        }
                      },
                      child: Text("Sign Up"),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInScreen(),
                    ),
                  ),
                  child: Text(
                    "Log in here",
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
