import 'package:flutter/material.dart';

class RetangularButton extends StatelessWidget {
  final String texto;
  final String rota;
  final Color color;
  const RetangularButton(
      {super.key,
      required this.texto,
      required this.rota,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/$rota');
      },
      child: Container(
        width: 210,
        height: 60,
        decoration: BoxDecoration(
          color: const Color(0xff2B4A8E),
          border: Border.all(color: Colors.white, width: 3),
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
