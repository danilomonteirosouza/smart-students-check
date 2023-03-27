import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String nome = '';
  String email = '';
  String password = '';

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
        color: const Color(0xff00ceff),
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
                    ElevatedButton(
                      onPressed: () {
                        if (email == "luizgabriel@desenvolvedor.com.br" &&
                            password == "123") {
                          print("Login correto");
                        } else {
                          print("Login inválido");
                        }
                      },
                      child: const Text("Entrar"),
                    ),
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