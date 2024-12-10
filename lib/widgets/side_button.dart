import 'package:avaliacao_1/themes/constants.dart';
import 'package:avaliacao_1/widgets/plus_button.dart';
import 'package:flutter/material.dart';

enum SideOrientation { left, right }

class SideButton extends StatelessWidget {
  final SideOrientation orientation;
  final String texto;
  final Function funcao;

  const SideButton(
      {super.key,
      required this.orientation,
      required this.texto,
      required this.funcao});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: orientation == SideOrientation.left
          ? SizedBox(
              height: 50,
              width: 50,
              child: PlusButton(
                func: funcao,
              ),
            )
          : null,
      title: Text(
        texto,
        textAlign: orientation == SideOrientation.left
            ? TextAlign.left
            : TextAlign.right,
        style: MyTextStyle.kTexto30,
      ),
      trailing: orientation == SideOrientation.right
          ? SizedBox(
              height: 50,
              width: 50,
              child: PlusButton(
                func: funcao,
              ),
            )
          : null,
    );
  }
}
