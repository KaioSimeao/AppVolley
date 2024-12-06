import 'package:avaliacao_1/constants.dart';
import 'package:avaliacao_1/screens/game_screen.dart';
import 'package:avaliacao_1/screens/initial_screen.dart';
import 'package:avaliacao_1/screens/scoreboard_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Avaliação 1',
      theme: ThemeData.dark().copyWith(
        primaryColor: MyColors.kAzulCeu,
        scaffoldBackgroundColor: MyColors.kAzulCeu,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialScreen(),
        '/game_screen': (context) => const GameScreen(),
        '/scoreboard_screen': (context) => const ScoreboardScreen(),
      },
    );
  }
}
