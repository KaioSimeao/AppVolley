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
                          color: Colors.grey[50],
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
                          color: Colors.grey[50],
                        ),
                      )
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
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.bar_chart_rounded),
                            Icon(Icons.bar_chart_rounded),
                            Icon(Icons.bar_chart_rounded),
                            Icon(Icons.bar_chart_rounded),
                          ],
                        ),
                      ),
                    ),
                    const Flexible(
                        flex: 2,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Score(times: [''], letra: 'A'),
                              Score(times: [''], letra: 'B'),
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
                              style: TextStyle(
                                  color: Colors.grey[50],
                                  fontSize: 15,
                                  fontFamily: 'ConcertOne'),
                            ),
                            Text(
                              "0:14'23''",
                              style: TextStyle(
                                  color: Colors.grey[50],
                                  fontSize: 15,
                                  fontFamily: 'ConcertOne'),
                            ),
                            Text(
                              "0:35'04''",
                              style: TextStyle(
                                  color: Colors.grey[50],
                                  fontSize: 15,
                                  fontFamily: 'ConcertOne'),
                            ),
                            Text(
                              "0:11'29''",
                              style: TextStyle(
                                  color: Colors.grey[50],
                                  fontSize: 15,
                                  fontFamily: 'ConcertOne'),
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
