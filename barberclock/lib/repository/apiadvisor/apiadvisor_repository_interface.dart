import 'package:barberclock/src/models/apiadvisor_model.dart';

abstract class IApiAdvisor{

  Future<ApiadvisorModel> get();

}