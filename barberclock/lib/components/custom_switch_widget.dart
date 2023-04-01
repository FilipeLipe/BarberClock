import 'package:barberclock/main_controller.dart';
import 'package:flutter/material.dart';

class CustomSwitchWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Switch(
        value: MainController.instance.themeSwitch.value,
        onChanged: (value) {
          MainController.instance.changeTheme(value);
        });
  }

}