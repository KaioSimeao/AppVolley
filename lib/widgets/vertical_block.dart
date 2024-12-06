import 'package:flutter/material.dart';

class VerticalBlock extends StatelessWidget {
  final String texto;
  const VerticalBlock({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Container(
        width: 350,
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          border: Border.all(
            width: 2,
            color: const Color(0xffC2F2F8),
          ),
        ),
        child: Text(
          texto,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xffC2F2F8),
            fontSize: 50,
            fontFamily: 'ConcertOne',
          ),
        ),
      ),
    );
  }
}
