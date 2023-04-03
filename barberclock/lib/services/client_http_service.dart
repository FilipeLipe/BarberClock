import 'package:dio/dio.dart';

import '../interfaces/cliente_http_service_interface.dart';

class ClientHttpService implements IClienteHttp{

  final Dio dio = Dio();

  @override
  void addToken(String token) {}

  @override
  Future get(String url) async{
    var response = await dio.get(url);
    return response.data;
  }

}