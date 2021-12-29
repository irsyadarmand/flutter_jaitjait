import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const primaryColor = Color(0xFF9E3668);
const textColor = Color(0xF2393938);
const backgroundColor = Color(0xFFE5E5E5);
const minorColor = Color(0xFFFFAB48);
const bgstyleColor = Color(0xFFFFF7FB);

const defaultPadding = 16.0;

const titleStyleLighterBlack = TextStyle(
  fontFamily: 'Open Sans',
  color: Color(0xFF393938),
  fontWeight: FontWeight.w500,
  fontSize: 12,
);

OutlineInputBorder textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: textColor.withOpacity(0.8),
  ),
);

const emailError = "Enter a valid email address";
const requiredField = "This field is required";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: "password is required"),
    MinLengthValidator(8, errorText: "password must be at least 8 digits long"),
  ],
);
