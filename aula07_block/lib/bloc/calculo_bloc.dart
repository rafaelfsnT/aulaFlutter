import 'package:aula07_block/ui/widgets/alert_message.dart';
import 'package:flutter/widgets.dart';

class CalculoBloc {
  final BuildContext context;
  final gasolinaController = TextEditingController();
  final etanolController = TextEditingController();

  CalculoBloc(this.context);

  void calculate() {
    final valorGasolina = double.parse(gasolinaController.text);
    final valorEtanol = double.parse(etanolController.text);

    (valorEtanol <= (valorGasolina * 0.7)
        ? AlertMessage().show(context, 'Etanol é melhor!!!')
        : AlertMessage().show(context, 'Gasolina é melhor!!!'));
  }
}
