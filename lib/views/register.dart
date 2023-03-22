import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.android){
      return Scaffold(
          backgroundColor: const Color(0xff00ceff),
          appBar: AppBar(
            title: const Text('In progress ...'),
            backgroundColor: const Color(0xff00ceff),
            elevation: 0.0,
            centerTitle: true,
          ),
          body: Container(
              color: const Color(0xff00ceff),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.zero,
                            child: Center(
                              child: Text('In progress ...'),
                            ),
                          )
                      ),
                    ],
                  ),
                ],
              )
          )
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
