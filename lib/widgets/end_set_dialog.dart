import 'package:avaliacao_1/widgets/retangular_button.dart';
import 'package:flutter/material.dart';

class EndSetDialog extends StatelessWidget {
  const EndSetDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 90),
        decoration: BoxDecoration(
          color: const Color(0xffC2F2F8).withOpacity(0.5),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'FIM DE SET',
                style: TextStyle(
                  color: Color(0xff2B4A8E),
                  fontSize: 40,
                  fontFamily: 'ConcertOne',
                ),
              ),
              Text(
                'Autoconviadados',
                style: TextStyle(
                  color: Color(0xff2B4A8E),
                  fontSize: 80,
                  fontFamily: 'ConcertOne',
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 32),
                  child: Text(
                    'VENCEU',
                    style: TextStyle(
                      color: Color(0xff2B4A8E),
                      fontSize: 30,
                      fontFamily: 'ConcertOne',
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RetangularButton(
                    texto: 'Terminar',
                    rota: '',
                    color: Colors.white,
                  ),
                  RetangularButton(
                    texto: 'Novo Set',
                    rota: 'game_screen',
                    color: Color(0xFFFFA33B),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
