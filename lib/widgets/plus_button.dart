import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  final Function func;
  const PlusButton({super.key, required this.func});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff2B4A8E),
          shape: const CircleBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 10)),
      onPressed: () => func,
      child: Text(
        "+",
        style: TextStyle(color: Colors.grey[50], fontSize: 40),
      ),
    );
  }
}
