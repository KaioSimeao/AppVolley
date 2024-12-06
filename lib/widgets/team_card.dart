import 'package:flutter/material.dart';

class TeamCard extends StatelessWidget {
  final String letra;
  final String nome;
  final bool teamName;
  const TeamCard({super.key, required this.letra, required this.nome, required this.teamName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffC2F2F8),
                shape: const CircleBorder()),
            onPressed: () {},
            child: Text(
              letra,
              style: const TextStyle(
                  color: Color(0xff2B4A8E),
                  fontSize: 27,
                  fontFamily: 'ConcertOne'),
            )),
        Visibility(
          visible: teamName,
          child: Text(
            nome,
            style: const TextStyle(
                color: Color(0xff2B4A8E),
                fontSize: 30,
                fontFamily: 'ConcertOne'),
          ),
        ),
      ],
    );
  }
}
