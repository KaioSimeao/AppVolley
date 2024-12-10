import 'package:avaliacao_1/themes/constants.dart';
import 'package:avaliacao_1/widgets/bottom_score_bar.dart';
import 'package:avaliacao_1/widgets/score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScoreboardScreen extends StatefulWidget {
  const ScoreboardScreen({super.key});

  @override
  State<ScoreboardScreen> createState() => _ScoreboardScreenState();
}

class _ScoreboardScreenState extends State<ScoreboardScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () async {
                          Navigator.of(context).pop('/game_screen');
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          color: MyColors.kFontePrimaria,
                        ),
                      ),
                      const Text(
                        'PLACAR GERAL',
                        style: TextStyle(
                            color: MyColors.kAzulMarinho,
                            fontSize: 30,
                            fontFamily: 'ConcertOne'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: MyColors.kFontePrimaria,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Flexible(
                flex: 8,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bar_chart_rounded,
                                color: MyColors.kFontePrimaria),
                            Icon(Icons.bar_chart_rounded,
                                color: MyColors.kFontePrimaria),
                            Icon(Icons.bar_chart_rounded,
                                color: MyColors.kFontePrimaria),
                            Icon(Icons.bar_chart_rounded,
                                color: MyColors.kFontePrimaria),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 2,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Score(times: [
                                'Ziraldos',
                                'Ziraldos',
                                'Ziraldos',
                                'Sparrings'
                              ], letra: 'A'),
                              Score(times: [
                                'Sparrings',
                                'Sicranos',
                                'Autoconviadados',
                                'Autoconviadados'
                              ], letra: 'B'),
                            ],
                          ),
                        )),
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "0:24'90''",
                              style: MyTextStyle.kTexto20,
                            ),
                            Text(
                              "0:14'23''",
                              style: MyTextStyle.kTexto20,
                            ),
                            Text(
                              "0:35'04''",
                              style: MyTextStyle.kTexto20,
                            ),
                            Text(
                              "0:11'29''",
                              style: MyTextStyle.kTexto20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Flexible(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: BottomScoreBar(),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
