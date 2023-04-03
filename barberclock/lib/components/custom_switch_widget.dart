import 'package:barberclock/main_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: MainController.instance.isDark,
        onChanged: (value) {
          MainController.instance.changeThemeViewModel.changeTheme(value);
        });
  }

}