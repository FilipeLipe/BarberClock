import 'package:flutter/foundation.dart';

class MainController {

  static final MainController instance = MainController._();

  MainController._();

  final themeSwitch = ValueNotifier<bool>(false);

  changeTheme(bool value){
    themeSwitch.value = value;
  }

}