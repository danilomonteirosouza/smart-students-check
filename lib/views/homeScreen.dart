/*
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../routes/routegenerator.dart';

class homeScreem extends StatefulWidget {
  const homeScreem({Key? key}) : super(key: key);

  @override
  State<homeScreem> createState() => _homeScreemState();
}

class _homeScreemState extends State<homeScreem> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      drawer: Drawer(
         child:Column(
        children:[
          UserAccountsDrawerHeader(
              currentAccountPicture: Image.network("https://www.caiodib.com.br/wp-content/uploads/2018/03/vestibular-do-ita-mudou.png"),
              accountName: Text("Luiz"),
              accountEmail: Text("luizgabrielpacheco.1006@gmail.com")),
          ListTile(
            leading: Icon(Icons.attach_money, color: Colors.green),
            title: Text("Menu lateral"),
            subtitle: Text("Selecionar a opção no menu"),
            onTap: () => print("Clicou"),
          ),
          ListTile(
          leading: Icon(Icons.edit, color: Colors.lightBlueAccent),
          title: Text("Editar cadastro"),
          subtitle: Text(""),
          onTap: () => print("Clicou"),
          ),

    )

        ]
    )
    ),
            backgroundColor: const Color(0xff00ceff),
            appBar: AppBar(
              title: Text("Smart Student's Check",
                style: TextStyle(
                    fontSize: 27,
                    color: Colors.white
                ),
              ),
            );
    )
  }
}
 */
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                  currentAccountPicture: Image.network(
                      "https://www.caiodib.com.br/wp-content/uploads/2018/03/vestibular-do-ita-mudou.png"),
                  accountName: Text("Luiz"),
                  accountEmail: Text("luizgabrielpacheco.1006@gmail.com")),
              ListTile(
                leading: Icon(Icons.attach_money, color: Colors.green),
                title: Text("Menu lateral"),
                subtitle: Text("Selecionar a opção no menu"),
                onTap: () => print("Clicou"),
              ),
              ListTile(
                leading:
                Icon(Icons.edit, color: Colors.lightBlueAccent),
                title: Text("Editar cadastro"),
                subtitle: Text(""),
                onTap: () => print("Clicou"),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xff00ceff),
        appBar: AppBar(
          title: Text(
            "Smart Student's Check",
            style: TextStyle(fontSize: 27, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

