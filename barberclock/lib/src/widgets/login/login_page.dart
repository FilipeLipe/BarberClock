import 'package:barberclock/src/widgets/home/home_page.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_switch_widget.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
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
        ]),
        
      ),
    );
  }
}