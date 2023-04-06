import 'package:barberclock/constants/ConstantesUtil.dart';
import 'package:barberclock/main_controller.dart';
import 'package:barberclock/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'main_module.dart';

void main() {
  runApp(ModularApp(module: MainModule(), child: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return ValueListenableBuilder<bool>(
        valueListenable: Modular.get<MainController>().themeSwitch,
        builder: (context, idDark, child){
          return MaterialApp(
            title: 'Minha Aplicação',
            theme: ThemeData(
                scaffoldBackgroundColor: ConstantsUtil.CinzaEscuro,
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
