/*
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../reusable_widgets/elevatedbuttonlong.dart';
import '../routes/routegenerator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}
      void initialRoute(){
        Navigator.pushNamed(
            context,
            RouteGenerator.ROTA_HOME
        );
      }
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return Scaffold(
        backgroundColor: const Color(0xff00ceff),
        appBar: AppBar(
          title: const Text('Login'),
          backgroundColor: const Color(0xff00ceff),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff00ceff),
                  Colors.lightBlueAccent,
                  Colors.white38,
                ],
              )),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder()),
                ),
              ),
              const SizedBox(height: 70),
              BotaoCustomizadoLong(
                texto: "Entrar",
                onPressed: () {

                },
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      );
    }
    return const SizedBox();
  }
}
 */
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../reusable_widgets/elevatedbuttonlong.dart';
import '../routes/routegenerator.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void homeRoute(){
    Navigator.pushReplacementNamed(
      context,
      RouteGenerator.ROTA_HOME,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return Scaffold(
        backgroundColor: const Color(0xff00ceff),
        appBar: AppBar(
          title: const Text('Login'),
          backgroundColor: const Color(0xff00ceff),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff00ceff),
                Colors.lightBlueAccent,
                Colors.white38,
              ],
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Senha",
                    labelStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 70),
              BotaoCustomizadoLong(
                texto: "Entrar",
                onPressed: (){
                  homeRoute();
                },
              ),
            ],
          ),
        ),
      );
    }
    return const SizedBox();
  }
}
