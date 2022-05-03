import 'package:e_basket/dribbling_screen.dart';
import 'package:e_basket/home_screen.dart';
import 'package:e_basket/layup_screen.dart';
import 'package:e_basket/shooting_screen.dart';
import 'package:e_basket/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/' : (context) => SplashScreen(),
        '/home' : (context) => HomeScreen(),
        '/shooting' : (context) => ShootingScreen(),
        '/dribbling' : (context) => DribblingScreen(),
        '/layup' : (context) => LayUpScreen()
      },
    );
  }
}
