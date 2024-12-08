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
          padding: const EdgeInsets.symmetric(horizontal: 1)),
      onPressed: () => func,
      child: Icon(
        Icons.add,
        size: 40,
        color: Colors.grey[50],
      ),
    );
  }
}
