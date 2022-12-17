import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


import 'screens/login.dart';
import 'screens/register.dart';
import 'screens/afterlogin.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'register': (context) => MyRegister(),
      'login': (context) => MyLogin(),
      'home_screen': (context) => AfterLogin()
    },
  ));
}