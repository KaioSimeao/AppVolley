import 'package:avaliacao_1/themes/constants.dart';
import 'package:avaliacao_1/widgets/logo_volley.dart';
import 'package:avaliacao_1/widgets/retangular_button.dart';
import 'package:avaliacao_1/widgets/teams.dart';
import 'package:avaliacao_1/widgets/vertical_block.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LogoVolley(),
            const Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Times Box
                    VerticalBlock(texto: "TIMES"),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        //times
                        Teams(texto1: "Sicranos", texto2: "3"),
                        Teams(texto1: "Autoconvidados", texto2: "3"),
                        Teams(texto1: "Ziraldos", texto2: "4"),
                        Teams(texto1: "Sparrings", texto2: "5"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Jogo casado',
                        style: TextStyle(
                            color: MyColors.kGelo,
                            fontSize: 25,
                            fontFamily: 'ConcertOne'),
                      ),
                    ),
                  ),
                  RetangularButton(
                    texto: 'Iniciar',
                    color: MyColors.kFontePrimaria,
                    funcao: () {
                      Navigator.pushNamed(context, '/game_screen');
                    },
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: MyColors.kAzulMarinho,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1000),
          ),
          child: const Text(
            '+',
            style: TextStyle(
              color: MyColors.kFontePrimaria,
              fontSize: 48,
            ),
          ),
        ),
      ),
    );
  }
}
