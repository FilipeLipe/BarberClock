import 'package:barberclock/interfaces/local_storage_interface.dart';
import '../src/models/appconfig_model.dart';

class ChangeThemeViewModel{

  final ILocalStorage storage;

  final AppConfigModel config = AppConfigModel();

  ChangeThemeViewModel({required this.storage});

  Future init() async{
    await storage.get('isDark').then((value){
      if(value != null){
        config.themeSwitch.value = value;
      }
    });
  }
  changeTheme(bool value){
    config.themeSwitch.value = value;
    storage.put('isDark', value);
  }
}