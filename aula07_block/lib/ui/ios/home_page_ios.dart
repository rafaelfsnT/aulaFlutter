import 'package:aula07_block/bloc/calculo_bloc.dart';
import 'package:aula07_block/config.dart';
import 'package:aula07_block/ui/android/widgets/campo_texto.dart';
import 'package:flutter/cupertino.dart';

class HomePageIos extends StatefulWidget {
  const HomePageIos({super.key});

  @override
  State<HomePageIos> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageIos> {
  @override
  Widget build(BuildContext context) {
    final calcBloc = CalculoBloc(context);

    return Placeholder(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text(Config.tituloApp),
        ),
        child: Column(
          children: [
            CampoTexto(
              calcBloc.gasolinaController,
              'Gasolina',
              TextInputType.number
            ),
            CampoTexto(
              calcBloc.etanolController,
              'Etanol',
              TextInputType.number
            ),
            CupertinoButton(
              child: Text('Calcular'),
              onPressed: calcBloc.calculate
            ),
          ],
        )
      ),
    );
  }
}
