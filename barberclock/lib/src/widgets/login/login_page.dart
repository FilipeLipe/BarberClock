import 'package:barberclock/repository/apiadvisor/apiadvisor_repository.dart';
import 'package:barberclock/services/client_http_service.dart';
import 'package:barberclock/viewmodels/apiadvisor_viewmodel.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_switch_widget.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final controller = LoginController(
    ApiadvisorViewModel(
      ApiadvisorRepository(
        ClientHttpService(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.circle),
        onPressed: (){
        controller.get();
      },),
      body: Center(
        child: Column(
            children: [
              TextButton(
                onPressed: () {
                  ///Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Ir para a Home'),
              ),
              CustomSwitchWidget(),
              ValueListenableBuilder(
                  valueListenable: controller.clima,
                  builder: (context, model, child){
                    if(model?.text == null){
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Text(model.text!);
              })
        ]),
        
      ),
    );
  }
}