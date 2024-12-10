import 'package:avaliacao_1/themes/constants.dart';
import 'package:avaliacao_1/widgets/court.dart';
import 'package:avaliacao_1/widgets/end_set_dialog.dart';
import 'package:avaliacao_1/widgets/retangular_button.dart';
import 'package:avaliacao_1/widgets/side_button.dart';
import 'package:avaliacao_1/widgets/team_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool _bolaladodireito = false;
  bool _bolaladoesquerdo = false;
  int _pontuacaoladodireito = 0;
  int _pontuacaoladoesquerdo = 0;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    super.dispose();
  }

  void novoSet() {
    setState(() {
      _pontuacaoladodireito = 0;
      _pontuacaoladoesquerdo = 0;
      _bolaladoesquerdo = false;
      _bolaladodireito = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop('/'),
                        icon: const Icon(
                          Icons.arrow_back,
                          color: MyColors.kFontePrimaria,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          await showDialog(
                            context: context,
                            barrierColor: Colors.transparent,
                            builder: (context) => EndSetDialog(
                              titulo: 'CONFIGURAÇÕES',
                              vencedor: 'Pausado',
                              novoSet: novoSet,
                              vencedorVisivel: false,
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.settings,
                          color: MyColors.kFontePrimaria,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 8,
                child: Row(
                  children: [
                    const Flexible(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SideButton(
                                orientation: SideOrientation.left,
                                texto: "Ace"),
                            SideButton(
                                orientation: SideOrientation.left,
                                texto: "Ataque"),
                            SideButton(
                                orientation: SideOrientation.left,
                                texto: "Bloqueio"),
                            SideButton(
                                orientation: SideOrientation.left,
                                texto: "Erro")
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: TeamCard(
                                  letra: 'A',
                                  nome: 'ziraldos',
                                  teamName: true,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: TeamCard(
                                  letra: 'B',
                                  nome: 'Sicranos',
                                  teamName: true,
                                ),
                              ),
                            ],
                          ),
                          const Court(
                            ladoesquerdo: true,
                            pontoladodireito: 0,
                            pontoladoesquerdo: 0,
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.grey[50],
                                  fontSize: 15,
                                  fontFamily: 'ConcertOne'),
                              children: const [
                                TextSpan(text: 'Tempo de jogo'),
                                TextSpan(
                                    text: " 1:14'00''",
                                    style: TextStyle(fontSize: 10))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: RetangularButton(
                              texto: 'Placar Geral',
                              color: MyColors.kFontePrimaria,
                              funcao: () {
                                Navigator.of(context)
                                    .pushNamed('/scoreboard_screen');
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    const Flexible(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SideButton(
                                orientation: SideOrientation.right,
                                texto: "Ace"),
                            SideButton(
                                orientation: SideOrientation.right,
                                texto: "Ataque"),
                            SideButton(
                                orientation: SideOrientation.right,
                                texto: "Bloqueio"),
                            SideButton(
                                orientation: SideOrientation.right,
                                texto: "Erro")
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

