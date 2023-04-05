import 'package:barberclock/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomSwitchWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: Modular.get<MainController>().themeSwitch,
        builder: (context, isDark, child){
          return Switch(
              value: Modular.get<MainController>().isDark,
              onChanged: (value) {
                Modular.get<MainController>().changeThemeViewModel.changeTheme(value);
              });
        }
      );

  }

}