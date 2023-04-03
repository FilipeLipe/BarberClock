import 'package:barberclock/repository/apiadvisor/apiadvisor_repository_interface.dart';
import 'package:barberclock/src/models/apiadvisor_model.dart';
import 'package:flutter/foundation.dart';

class ApiadvisorViewModel{

  final IApiAdvisor repository;
  final apiadvisorViewModel = ValueNotifier<ApiadvisorModel>(ApiadvisorModel());

  ApiadvisorViewModel(this.repository);

  fill() async{

    apiadvisorViewModel.value = await repository.get();

  }
}