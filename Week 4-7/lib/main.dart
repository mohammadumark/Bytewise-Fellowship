import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'Login',
    routes: {
      'Login' : (context)=>MyLogin()
    },
  ));
}