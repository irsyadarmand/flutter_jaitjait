import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../screens/constants.dart';
import 'package:flutter_jaitjait/auth/sign_up_screen.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;

  late String _name, _email, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldName(text: "Name"),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(hintText: "jait jait"),
              validator: RequiredValidator(errorText: "Name is required"),
              onSaved: (name) => _name = name!,
            ),
            const SizedBox(height: defaultPadding),
            TextFieldName(text: "Email"),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(hintText: "tester@gmail.com"),
              validator: EmailValidator(errorText: "Use a valid email!"),
              onSaved: (email) => _email = email!,
            ),
            const SizedBox(height: defaultPadding),
            TextFieldName(text: "Password"),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "*******"),
              validator: passwordValidator,
              onSaved: (password) => _password = password!,
              onChanged: (pass) => _password = pass,
            ),
            const SizedBox(height: defaultPadding),
            TextFieldName(text: "Confirm Password"),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(hintText: "*******"),
              validator: (pass) =>
                  MatchValidator(errorText: "Password do not match")
                      .validateMatch(pass!, _password),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldName extends StatelessWidget {
  const TextFieldName({
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
