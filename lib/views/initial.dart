import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:lottie/lottie.dart';
import '../reusable_widgets/elevatedbuttonlong.dart';
import '../routes/routegenerator.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  void loginRoute(){
    Navigator.pushNamed(
        context,
        RouteGenerator.ROTA_LOGIN
    );
  }

  void registerRoute(){
    Navigator.pushNamed(
        context,
        RouteGenerator.ROTA_REGISTER
    );
  }

  @override
  Widget build(BuildContext context) {
    if(defaultTargetPlatform == TargetPlatform.android){
      return Scaffold(
        backgroundColor: const Color(0xff00ceff),
        appBar: AppBar(
          title: const Text('Vamos começar?'),
          backgroundColor: const Color(0xff00ceff),
          elevation: 0.0,
          centerTitle: true,
        ),
          body: Container(
              color: const Color(0xff00ceff),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                          child: Padding(
                            padding: EdgeInsets.zero,
                            child: Lottie.asset('lib/assets/initial.json'),
                            )
                      ),
                      Expanded(
                        flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                            Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: BotaoCustomizadoLong(
                                  onPressed: loginRoute,
                                  texto: 'Login',
                                )
                            ),
                            Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: BotaoCustomizadoLong(
                                  onPressed: registerRoute,
                                  texto: 'Register',
                                )
                              ),
                            ],
                          )
                      ),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                           SafeArea(
                             child: Text(
                               '\u00a9Smart Student',
                               style: TextStyle(
                                   fontSize: 20,
                                   color: Colors.grey
                               ),
                             ),
                           )
                          ],
                          )
                      ),
                    ],
                  ),
                ],
              )
        )
      );
    } else if(defaultTargetPlatform == TargetPlatform.iOS){
      return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Color(0xff00ceff),
          middle: Text('Vamos comerçar?'),
        ),
          child: Container(
              color: const Color(0xff00ceff),
              child: Stack(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.zero,
                            child: Lottie.asset('lib/assets/initial.json'),
                          )
                      ),
                      Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: BotaoCustomizadoLong(
                                    onPressed: loginRoute,
                                    texto: 'Login',
                                  )
                              ),
                              Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: BotaoCustomizadoLong(
                                    onPressed: registerRoute,
                                    texto: 'Register',
                                  )
                              ),
                            ],
                          )
                      ),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const <Widget>[
                              SafeArea(
                                child: Text(
                                  '\u00a9Smart Student',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.grey
                                  ),
                                ),
                              )
                            ],
                          )
                      ),
                    ],
                  ),
                ],
              )
          )
      );
    } else {
      return const Text('System not detected');
    }
  }
}


