import 'package:barberclock/main_controller.dart';
import 'package:barberclock/src/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder<bool>(
        valueListenable: MainController.instance.themeSwitch,
        builder: (context, idDark, child){
          return MaterialApp(
            title: 'Minha Aplicação',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                brightness: idDark ? Brightness.dark : Brightness.light
            ),
            initialRoute: '/',
            routes: routes,
          );
        });
  }
}
