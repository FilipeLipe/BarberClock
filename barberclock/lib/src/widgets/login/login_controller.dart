import 'package:barberclock/src/models/apiadvisor_model.dart';
import 'package:barberclock/src/widgets/home/home_controller.dart';
import 'package:barberclock/viewmodels/apiadvisor_viewmodel.dart';
import 'package:flutter/cupertino.dart';

class LoginController{

  final ApiadvisorViewModel viewModel;

  LoginController(this.viewModel);

  ValueNotifier<ApiadvisorModel> get clima => viewModel.apiadvisorViewModel;

  get(){
    viewModel.fill();
  }

}