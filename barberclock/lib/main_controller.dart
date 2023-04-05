
import 'package:barberclock/interfaces/local_storage_interface.dart';
import 'package:barberclock/services/shared_local_storage_service.dart';
import 'package:barberclock/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class MainController {

  final ChangeThemeViewModel changeThemeViewModel;

  MainController(this.changeThemeViewModel){
    this.changeThemeViewModel.init();
  }

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => changeThemeViewModel.config.themeSwitch;

}