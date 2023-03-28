/*
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../routes/routegenerator.dart';
import '../reusable_widgets/elevatedbuttonlong.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String nome = '';
  String email = '';
  String password = '';

  void initialRoute(){
    Navigator.pushNamed(
        context,
        RouteGenerator.ROTA_INICIAL
    );
  }

  @override
  Widget build(BuildContext context) {
    //Criação do titulo cadastro na AppBar
    return Scaffold(
      backgroundColor: const Color(0xff00ceff),
      appBar: AppBar(
        title: const Text('Cadastro'),
        backgroundColor: const Color(0xff00ceff),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        //Preenchendo o corpo da tela com a cor padrão
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 3),
                child: Column(
                  //Widget coluna usado junto com o TextField para colocar as strings recebidas do usuario
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      onChanged: (text) {
                        setState(() {
                          nome = text;
                        });
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Nome",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      onChanged: (text) {
                        setState(() {
                          email = text;
                        });
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      onChanged: (text) {
                        setState(() {
                          password = text;
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 15),
                    BotaoCustomizadoLong(
                      texto: "Entrar" ,
                      onPressed: (){
                        initialRoute();
                      },
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 3),
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
                    ),
                  ],
                )
            ),
            ),
          ],
        ),
      ),
    );
  }
}
 */
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../routes/routegenerator.dart';
import '../reusable_widgets/elevatedbuttonlong.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String nome = '';
  String email = '';
  String password = '';

  void initialRoute(){
    Navigator.pushNamed(
        context,
        RouteGenerator.ROTA_INICIAL
    );
  }

  @override
  Widget build(BuildContext context) {
    //Criação do titulo cadastro na AppBar
    return Scaffold(
      backgroundColor: const Color(0xff00ceff),
      appBar: AppBar(
        title: Text('Cadastro',
            style: TextStyle(
            fontSize: 27,
            color: Colors.white
          ),
        ),
        backgroundColor: const Color(0xff00ceff),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
        //Preenchendo o corpo da tela com a cor padrão
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  //Widget coluna usado junto com o TextField para colocar as strings recebidas do usuario
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      onChanged: (text) {
                        setState(() {
                          nome = text;
                        });
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Nome",
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      onChanged: (text) {
                        setState(() {
                          email = text;
                        });
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      onChanged: (text) {
                        setState(() {
                          password = text;
                        });
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    BotaoCustomizadoLong(
                      texto: "Entrar" ,
                      onPressed: (){
                        initialRoute();
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}