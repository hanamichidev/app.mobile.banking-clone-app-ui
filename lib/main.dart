// @dart=2.12.0

import 'package:banking_app/pages/LoginPage.dart';
import 'package:banking_app/pages/root_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(title: 'Login'),
  ));
}
