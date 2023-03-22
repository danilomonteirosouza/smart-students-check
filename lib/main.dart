import 'package:smart_students_check/routes/routegenerator.dart';
import 'package:smart_students_check/views/splashscreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      title: "Smart Student's Check",
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    ),
  );
}

