import 'package:flutter/material.dart';
import 'package:barberclock/src/widgets/home/home_page.dart';
import 'package:barberclock/src/widgets/login/login_page.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/': return MaterialPageRoute(builder: (_) => LoginPage());
      case '/home': return MaterialPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('Rota não encontrada: ${settings.name}'),
          ),
        ));
    }
  }
}