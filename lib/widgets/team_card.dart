import 'package:avaliacao_1/themes/constants.dart';
import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  final String letra;
  final String nome;
  final bool teamName;
  const TeamCard(
      {super.key,
      required this.letra,
      required this.nome,
      required this.teamName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: MyColors.kGelo,
              shape: const CircleBorder(),
            ),
            onPressed: () {},
            child: Text(
              letra,
              style: const TextStyle(
                  color: MyColors.kAzulMarinho,
                  fontSize: 27,
                  fontFamily: 'ConcertOne'),
            )),
        Visibility(
          visible: teamName,
          child: Text(
            nome,
            style: const TextStyle(
                color: MyColors.kAzulMarinho,
                fontSize: 30,
                fontFamily: 'ConcertOne'),
          ),
        ),
      ],
    );
  }
}
