import 'package:flutter/cupertino.dart';

class CampoTextoIos extends StatelessWidget {
  final TextEditingController controller;
  final String texto;
  final TextInputType teclado;
  const CampoTextoIos(this.controller, this.texto, this.teclado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: CupertinoTextField(
        controller: controller,
        keyboardType: teclado,
        placeholder: texto,
      ),
    );
  }
}
