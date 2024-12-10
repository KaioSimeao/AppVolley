import 'package:avaliacao_1/themes/constants.dart';
import 'package:flutter/material.dart';

class RetangularButton extends StatelessWidget {
  final String texto;
  final Function funcao;
  final Color color;
  const RetangularButton(
      {super.key,
      required this.texto,
      required this.funcao,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => funcao(),
      child: Container(
        width: 210,
        height: 60,
        decoration: BoxDecoration(
          color: MyColors.kAzulMarinho,
          border: Border.all(color: MyColors.kFontePrimaria, width: 3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            texto,
            style: TextStyle(
              color: color,
              fontSize: 45,
              fontFamily: 'ConcertOne',
            ),
          ),
        ),
      ),
    );
  }
}
