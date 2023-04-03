import 'package:barberclock/interfaces/cliente_http_service_interface.dart';

import '../../src/models/apiadvisor_model.dart';
import 'apiadvisor_repository_interface.dart';

class ApiadvisorRepository implements IApiAdvisor{

  final IClienteHttp client;

  ApiadvisorRepository(this.client);

  @override
  Future<ApiadvisorModel> get() async{
    var json = await client.get("http://apiadvisor.climatempo.com.br/api/v1/anl/synoptic/locale/BR?token=3a4d3d266db17f6dee0eb718dd6d52df");
    ApiadvisorModel model = ApiadvisorModel.fromJson(json[0]);
    return model;
  }
}