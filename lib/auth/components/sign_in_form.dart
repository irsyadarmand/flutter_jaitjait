import 'package:flutter/material.dart';
import 'package:flutter_jaitjait/auth/components/sign_up_form.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../screens/constants.dart';

class SignInForm extends StatelessWidget {
  SignInForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;

  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: defaultPadding),
            TextFieldName(text: "Email"),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "tester@gmail.com",
              ),
              validator: EmailValidator(errorText: "Use a valid email!"),
              onSaved: (email) => _email = email!,
            ),
            const SizedBox(height: defaultPadding),
            TextFieldName(text: "Password"),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "*******",
              ),
              validator: passwordValidator,
              onSaved: (password) => _password = password!,
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldEmail extends StatelessWidget {
  const TextFieldEmail({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.normal,
            color: Colors.black87.withOpacity(0.7)),
      ),
    );
  }
}
