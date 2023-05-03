import 'package:flutter/material.dart';
import 'package:smart_students_check/views/homeScreen.dart';
import 'package:smart_students_check/views/initial.dart';
import 'package:lottie/lottie.dart';
import 'package:smart_students_check/views/login.dart';
import 'package:smart_students_check/views/register.dart';
import 'package:smart_students_check/views/splashscreen.dart';

class RouteGenerator {

  static const String ROTA_ROOT= "/";
  static const String ROTA_INICIAL= "/initial_screen";
  static const String ROTA_LOGIN = "/login";
  static const String ROTA_REGISTER = "/register";
  static const String ROTA_HOME = "/home";

  static Route<dynamic>? generateRoute( RouteSettings settings ){

    switch( settings.name ){
      case ROTA_ROOT :
        return MaterialPageRoute(
            builder: (_) => const SplashScreen()
        );
      case ROTA_INICIAL :
        return MaterialPageRoute(
            builder: (_) => const InitialScreen()
        );
      case ROTA_LOGIN :
        return MaterialPageRoute(
            builder: (_) => const Login()
        );
      case ROTA_REGISTER :
        return MaterialPageRoute(
            builder: (_) => const Register()
        );
        case ROTA_HOME :
        return MaterialPageRoute(
            builder: (_) => const Home()
        );
      default: _erroRota();
    }
    return null;
  }
  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            body: Container(
                color: const Color(0xff00ceff),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        flex: 3,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Lottie.asset('lib/assets/page_not_found.json'),
                        )
                    ),
                    const Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.center,
                          child: SafeArea(
                            child: Text(
                              '\u00a9Smart Student',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey
                              ),
                            ),
                          )
                      ),
                    ),
                  ],
                )
            ),
          );
        }
    );
  }
}