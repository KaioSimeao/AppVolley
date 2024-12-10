import 'package:avaliacao_1/themes/constants.dart';
import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  final Function func;
  const PlusButton({super.key, required this.func});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.kAzulMarinho,
          shape: const CircleBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 1)),
      onPressed: () => func(),
      child: const Text(
        '+',
        style: TextStyle(
          color: MyColors.kFontePrimaria,
          fontSize: 44,
        ),
      ),
    );
  }
}
