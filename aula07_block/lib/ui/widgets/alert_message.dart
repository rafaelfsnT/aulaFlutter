import 'package:aula07_block/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertMessage {
  void show(BuildContext context, String texto) {
    showAdaptiveDialog(
      context: context,
      builder:
          (context) => AlertDialog.adaptive(
            title: Text(Config.tituloApp),
            content: Text(texto),
            actions: [_criarOk(context)],
          ),
    );
  }

  Widget _criarOk(BuildContext context) {
    final tema = Theme.of(context);
    if ((tema.platform == TargetPlatform.iOS ||
        tema.platform == TargetPlatform.macOS)) {
      return CupertinoDialogAction(
        child: Text('OK'),
        onPressed: () => Navigator.pop(context),
      );
    } else {
      return TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text('OK'),
      );
    }
  }
}
