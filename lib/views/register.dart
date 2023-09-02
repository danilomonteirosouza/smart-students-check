import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  String _mensagemErro = '';

  void initialRoute() {
    Navigator.pushNamed(context, RouteGenerator.ROTA_INICIAL);
  }

  void _cadastrarUsuario() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Cadastro bem-sucedido, você pode navegar para outra página aqui
      initialRoute();
    } catch (error) {
      print("Erro ao cadastrar usuário: $error");
      setState(() {
        _mensagemErro = "Erro ao cadastrar usuário, verifique os campos e tente novamente!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff00ceff),
      appBar: AppBar(
        title: Text(
          'Cadastro',
          style: TextStyle(fontSize: 27, color: Colors.white),
        ),
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
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
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
                      texto: "Cadastrar",
                      onPressed: () {
                        _cadastrarUsuario(); // Chame a função de cadastro aqui
                      },
                    ),
                    if (_mensagemErro.isNotEmpty)
                      Text(
                        _mensagemErro,
                        style: TextStyle(color: Colors.red),
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
