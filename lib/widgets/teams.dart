import 'package:avaliacao_1/themes/constants.dart';
import 'package:flutter/material.dart';

class Teams extends StatelessWidget {
  final String texto1;
  final String texto2;
  const Teams({super.key, required this.texto1, required this.texto2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 7),
          child: Text(
            texto1,
            style: const TextStyle(
              color: MyColors.kAmareloMostarda,
              fontSize: 45,
              fontFamily: 'ConcertOne',
            ),
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          texto2,
          style: const TextStyle(
              color: MyColors.kAzulMarinho,
              fontSize: 50,
              fontFamily: 'ConcertOne',
              fontWeight: FontWeight.w900),
        ),
        const RotatedBox(
          quarterTurns: 3,
          child: Text(
            'jogadores',
            style: TextStyle(
                color: MyColors.kAzulMarinho,
                fontSize: 12,
                fontFamily: 'ConcertOne',
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
