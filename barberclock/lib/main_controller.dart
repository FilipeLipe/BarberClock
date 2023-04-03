
import 'package:barberclock/interfaces/local_storage_interface.dart';
import 'package:barberclock/services/shared_local_storage_service.dart';
import 'package:barberclock/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class MainController {

  static final MainController instance = MainController._();

  MainController._(){
    changeThemeViewModel.init();
  }

  final ChangeThemeViewModel changeThemeViewModel = ChangeThemeViewModel(storage: SharedLocalStorageService());

  bool get isDark => changeThemeViewModel.config.themeSwitch.value;
  ValueNotifier<bool> get themeSwitch => changeThemeViewModel.config.themeSwitch;

}