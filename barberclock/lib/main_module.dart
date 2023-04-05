import 'package:barberclock/interfaces/cliente_http_service_interface.dart';
import 'package:barberclock/main.dart';
import 'package:barberclock/main_controller.dart';
import 'package:barberclock/repository/apiadvisor/apiadvisor_repository.dart';
import 'package:barberclock/repository/apiadvisor/apiadvisor_repository_interface.dart';
import 'package:barberclock/services/client_http_service.dart';
import 'package:barberclock/services/shared_local_storage_service.dart';
import 'package:barberclock/src/widgets/login/login_controller.dart';
import 'package:barberclock/viewmodels/apiadvisor_viewmodel.dart';
import 'package:barberclock/viewmodels/change_theme_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'interfaces/local_storage_interface.dart';

class MainModule extends Module{

  @override
  List<Bind> get binds => [
    Bind.singleton((i) => LoginController(i.get())),
    Bind.singleton((i) => ApiadvisorViewModel(i.get())),
    Bind.singleton<IApiAdvisor>((i) => ApiadvisorRepository(i.get())),
    Bind.singleton<IClienteHttp>((i) => ClientHttpService()),

    Bind.singleton((i) => MainController(i.get())),
    Bind.singleton((i) => ChangeThemeViewModel(storage: i.get())),
    Bind.singleton<ILocalStorage>((i) => SharedLocalStorageService()),
  ];

  @override
  Widget get bootstrap => MyApp();

  // @override
  // List<Router> get routers => [
  //   Router('/', child: (context, args) => LoginPage()),
  //   Router('/home', child: (context, args) => HomePage()),
  // ];

}