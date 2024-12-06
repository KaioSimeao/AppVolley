import 'package:avaliacao_1/widgets/team_card.dart';
import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final List times;
  final String letra;
  const Score({super.key, required this.letra, required this.times});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xffF77859),
        border: Border.all(color: Colors.grey.shade50, width: 3),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TeamCard(
            letra: letra,
            nome: '',
            teamName: false,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Ziraldos',
                    style: TextStyle(
                        color: Colors.grey[50],
                        fontSize: 25,
                        fontFamily: 'ConcertOne'),
                  ),
                  Text(
                    'Ziraldos',
                    style: TextStyle(
                        color: Colors.grey[50],
                        fontSize: 25,
                        fontFamily: 'ConcertOne'),
                  ),
                  Text(
                    'Ziraldos',
                    style: TextStyle(
                        color: Colors.grey[50],
                        fontSize: 25,
                        fontFamily: 'ConcertOne'),
                  ),
                  Text(
                    'Sparrings',
                    style: TextStyle(
                        color: Colors.grey[50],
                        fontSize: 25,
                        fontFamily: 'ConcertOne'),
                  ),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '25',
                    style: TextStyle(
                        color: Color(0xff2B4A8E),
                        fontSize: 25,
                        fontFamily: 'ConcertOne'),
                  ),
                  Text(
                    '25',
                    style: TextStyle(
                        color: Color(0xff2B4A8E),
                        fontSize: 25,
                        fontFamily: 'ConcertOne'),
                  ),
                  Text(
                    '10',
                    style: TextStyle(
                        color: Color(0xFFFFA33B),
                        fontSize: 25,
                        fontFamily: 'ConcertOne'),
                  ),
                  Text(
                    '25',
                    style: TextStyle(
                        color: Color(0xff2B4A8E),
                        fontSize: 25,
                        fontFamily: 'ConcertOne'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ScoreText extends StatelessWidget {
  final String nome;
  final Color cor;
  const ScoreText({super.key, required this.nome, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Text(
      '25',
      style: TextStyle(
          color: cor, fontSize: 25, fontFamily: 'ConcertOne'),
    );
  }
}
