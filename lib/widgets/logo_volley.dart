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
              Text(
                'Volley',
                style: TextStyle(
                    color: Colors.grey[50],
                    fontSize: 50,
                    fontFamily: 'ConcertOne',
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Positioned(
            top: 67,
            left: 126,
            child: Text(
              'do fim de semana',
              style: TextStyle(
                  color: Colors.grey[50],
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
