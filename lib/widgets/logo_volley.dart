import 'package:avaliacao_1/themes/constants.dart';
import 'package:flutter/material.dart';

class LogoVolley extends StatelessWidget {
  const LogoVolley({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 100,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/volleyball.png",
                width: 70,
                height: 70,
              ),
              const Text(
                'Volley',
                style: TextStyle(
                    color: MyColors.kFontePrimaria,
                    fontSize: 50,
                    fontFamily: 'ConcertOne',
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const Positioned(
            top: 67,
            left: 126,
            child: Text(
              'do fim de semana',
              style: TextStyle(
                  color: MyColors.kFontePrimaria,
                  fontSize: 12,
                  fontFamily: 'ConcertOne',
                  fontWeight: FontWeight.w300),
            ),
          ),
        ],
      ),
    );
  }
}
