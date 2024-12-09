import 'package:avaliacao_1/themes/constants.dart';
import 'package:flutter/material.dart';

class BottomScoreBar extends StatelessWidget {
  const BottomScoreBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.lightBlueAccent,
        border: Border.symmetric(
            horizontal: BorderSide(width: 2, color: MyColors.kGelo)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              style: MyTextStyle.text30,
              children: const [
                TextSpan(text: 'Ziraldos: '),
                TextSpan(
                    text: '3', style: TextStyle(color: MyColors.kAzulMarinho))
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: MyTextStyle.text30,
              children: const [
                TextSpan(text: 'Sicranos: '),
                TextSpan(
                    text: '1', style: TextStyle(color: MyColors.kAzulMarinho))
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: MyTextStyle.text30,
              children: const [
                TextSpan(text: 'Autoconvidados: '),
                TextSpan(
                    text: '8', style: TextStyle(color: MyColors.kAzulMarinho))
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: MyTextStyle.text30,
              children: const [
                TextSpan(text: 'Sparrings: '),
                TextSpan(
                    text: '7', style: TextStyle(color: MyColors.kAzulMarinho))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
