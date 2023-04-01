import 'package:barberclock/src/widgets/home/home_page.dart';
import 'package:barberclock/src/widgets/login/login_page.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (BuildContext context) => LoginPage(),
  '/home': (BuildContext context) => HomePage(),
};