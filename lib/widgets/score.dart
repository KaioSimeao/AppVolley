import 'package:avaliacao_1/themes/constants.dart';
import 'package:avaliacao_1/widgets/team_card.dart';
import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final List times;
  final String letra;
  const Score({super.key, required this.letra, required this.times});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 220,
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
                  Text(times[0], style: MyTextStyle.kTexto25),
                  Text(times[1], style: MyTextStyle.kTexto25),
                  Text(times[2], style: MyTextStyle.kTexto25),
                  Text(times[3], style: MyTextStyle.kTexto25),
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('25', style: MyTextStyle.kTextoAzul25),
                  Text('25', style: MyTextStyle.kTextoAzul25),
                  Text('10', style: MyTextStyle.kTextoAmarelo25),
                  Text('25', style: MyTextStyle.kTextoAzul25)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
