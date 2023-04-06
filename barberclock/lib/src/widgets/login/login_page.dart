import 'package:barberclock/constants/ConstantesUtil.dart';
import 'package:barberclock/repository/apiadvisor/apiadvisor_repository.dart';
import 'package:barberclock/services/client_http_service.dart';
import 'package:barberclock/viewmodels/apiadvisor_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../components/custom_switch_widget.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final controller = Modular.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: ConstantsUtil.gradientRadial),
            //color: ConstantsUtil.CinzaMedio,
          ),
          Padding(
            padding: ConstantsUtil.BordaGeral,
            child: Container(
              decoration: BoxDecoration(
                color: ConstantsUtil.CinzaEscuro,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(300),
                    bottomRight: Radius.circular(100),
                    topLeft:  Radius.circular(150),
                    topRight: Radius.circular(300)),
              ),
              child: Center(
                child: Padding(
                  padding: ConstantsUtil.BordaGeral,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/LogoLaranja.png'),
                        height: 300,
                      ),
                      Padding(
                        padding: ConstantsUtil.BordaGeral/2 + ConstantsUtil.BordaTop*2,
                        child: Column(
                          children: [
                            _getInputUsername(),
                            _getInputPassword(),
                            _getCheckRemember(),
                            Padding(padding: ConstantsUtil.BordaTop),
                            _getButtonLogin(context),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _getInputUsername() {
  return Padding(
      padding: EdgeInsets.only(top: 13),
      child: TextFormField(
          decoration: InputDecoration(
            labelText: "Login",
            labelStyle: TextStyle(color: ConstantsUtil.Branco),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ConstantsUtil.Laranja),
              borderRadius: BorderRadius.circular(100.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ConstantsUtil.Laranja),
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
          style: TextStyle(color: ConstantsUtil.Branco),
          validator: (text) => text!.isEmpty ? "Informe o Login" : null,
        ),
  );
}


Widget _getInputPassword() {
  return Padding(
      padding: EdgeInsets.only(top: 13),
      child: //GetX<LoginController>(builder: (_) {
        //return
      TextFormField(
            //controller: TextEditingController(text: _.password),
            //onSaved: (value) => _.password = value,
            //enabled: !_.isLoading,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(color: ConstantsUtil.Branco),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ConstantsUtil.Laranja),
                borderRadius: BorderRadius.circular(100.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ConstantsUtil.Laranja),
                borderRadius: BorderRadius.circular(100.0),
              ),
            ),
            style: TextStyle(color: ConstantsUtil.Branco),
            validator: (text) => text!.isEmpty ? "Informe a Senha" : null)
  );
}

Widget _getCheckRemember() {
  return Row(
    children: <Widget>[
      Theme(
        data: ThemeData(unselectedWidgetColor: ConstantsUtil.Laranja),
        child: Row(
          children: [
            Checkbox(
              activeColor: ConstantsUtil.Laranja,
              hoverColor: ConstantsUtil.Laranja,
              focusColor: Colors.white,
              onChanged: null,
              value: true,
              //value: _controller!.remember,
              // onChanged: (newValue) => (_controller!.isLoading
              // ? null
              //     : _controller!.remember = newValue)
              ),
              Text(
              "Lembrar Senha",
              style: TextStyle(color: ConstantsUtil.Branco),
              )
          ]
        ),
    ),
  ]);
}


Widget _getButtonLogin(BuildContext context) {
  return Container(
      height: 50,
      width: 130,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ConstantsUtil.Laranja),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
        child: Text(
          "Entrar",
          style: TextStyle(color: ConstantsUtil.Branco),
        ),
        onPressed: () async {
          Navigator.pushNamed(context, '/home');
        },
      )
  );
}
