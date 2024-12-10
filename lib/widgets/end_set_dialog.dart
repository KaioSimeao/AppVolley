import 'package:avaliacao_1/themes/constants.dart';
import 'package:avaliacao_1/widgets/retangular_button.dart';
import 'package:flutter/material.dart';

class EndSetDialog extends StatelessWidget {
  final String titulo;
  final String vencedor;
  final Function novoSet;
  final bool vencedorVisivel;

  const EndSetDialog({
    super.key,
    required this.titulo,
    required this.vencedor,
    required this.novoSet,
    required this.vencedorVisivel,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 90),
        decoration: BoxDecoration(
          color: MyColors.kGelo.withOpacity(0.7),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 2,
            color: MyColors.kFontePrimaria,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                titulo,
                style: const TextStyle(
                  color: MyColors.kAzulMarinho,
                  fontSize: 40,
                  fontFamily: 'ConcertOne',
                ),
              ),
              Text(
                vencedor,
                style: const TextStyle(
                  color: MyColors.kAzulMarinho,
                  fontSize: 70,
                  fontFamily: 'ConcertOne',
                ),
              ),
              Visibility(
                visible: vencedorVisivel,
                child: const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'VENCEU',
                    style: TextStyle(
                      color: MyColors.kAzulMarinho,
                      fontSize: 40,
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RetangularButton(
                    texto: 'Terminar',
                    color: MyColors.kFontePrimaria,
                    funcao: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                  ),
                  RetangularButton(
                    texto: 'Novo Set',
                    color: MyColors.kAmareloMostarda,
                    funcao: () {
                      Navigator.of(context).pop();
                      novoSet();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
