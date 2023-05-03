import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smart_students_check/views/splashscreen.dart';

class ConnectionToDataBase extends StatelessWidget {
  ConnectionToDataBase({Key? key}) : super(key: key);

  final Future<FirebaseApp> _startDB = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _startDB,
        builder: (context, snapshot){
          if(snapshot.hasError){
            return const Text("Failed to connecto to DataBase");
          }else if(snapshot.connectionState == ConnectionState.done){
            return const SplashScreen();
          }else{
            return const CircularProgressIndicator();
          }
        }
    );
  }
}
