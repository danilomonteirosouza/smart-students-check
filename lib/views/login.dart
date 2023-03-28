import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.android){
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
                  Colors.white38,
                ],
              )
            ),
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
                      labelStyle: TextStyle(
                          color: Colors.black
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(
                        color: Colors.black
                      ),
                      border: OutlineInputBorder()
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    } else if(defaultTargetPlatform == TargetPlatform.iOS){
      return const CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('In progress ...'),
          ),
          child: Text('In Progress')
      );
    } else {
      return const Text('System not detected');
    }
  }
}