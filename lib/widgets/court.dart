import 'package:avaliacao_1/themes/constants.dart';
import 'package:flutter/material.dart';

class Court extends StatefulWidget {
  final bool ladodireito;
  final bool ladoesquerdo;
  final int pontoladoesquerdo;
  final int pontoladodireito;
  const Court(
      {super.key,
      required this.ladodireito,
      required this.ladoesquerdo,
      required this.pontoladodireito,
      required this.pontoladoesquerdo});

  @override
  State<Court> createState() => _CourtState();
}

class _CourtState extends State<Court> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildSide(
          widget.ladoesquerdo,
          widget.pontoladoesquerdo,
          MyColors.kLaranjaCenoura,
        ),
        buildSide(
          widget.ladodireito,
          widget.pontoladodireito,
          MyColors.kLaranjaCenoura,
        )
      ],
    );
  }
}

Widget buildSide(bool visible, int points, Color color) {
  return Container(
    width: 190,
    height: 150,
    decoration: BoxDecoration(
      color: color,
      border: Border.all(
        color: MyColors.kFontePrimaria,
        width: 3,
      ),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          (visible)
              ? Image.asset(
                  'assets/images/volleyball.png',
                )
              : const SizedBox(
                  height: 53,
                ),
          Text(
            points.toString(),
            style: const TextStyle(
              color: MyColors.kFontePrimaria,
              fontSize: 50,
              fontFamily: 'ConcertOne',
            ),
          ),
        ],
      ),
    ),
  );
}
