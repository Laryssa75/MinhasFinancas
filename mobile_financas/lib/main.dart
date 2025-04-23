import 'package:flutter/material.dart';
import 'package:mobile_financas/home_screen.dart';
import 'package:mobile_financas/FourthScreen.dart';
import 'package:mobile_financas/SecondScreen.dart';
import 'package:mobile_financas/ThirdScreen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financas App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const TelaLogin(),
        '/home_screen': (context) => const TelaInicial(), //Rota Inicial
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/fourth': (context) => const FourthScreen(),
      },
    );
  }
}
