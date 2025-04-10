import 'package:aula07_block/bloc/calculo_bloc.dart';
import 'package:aula07_block/config.dart';
import 'package:aula07_block/ui/android/widgets/campo_texto.dart';
import 'package:flutter/material.dart';

class HomePageA extends StatefulWidget {
  const HomePageA({super.key});

  @override
  State<HomePageA> createState() => _HomePageAState();
}

class _HomePageAState extends State<HomePageA> {
  @override
  Widget build(BuildContext context) {
    final calcBloc = CalculoBloc(context);

    return Placeholder(
      child: Scaffold(
        appBar: AppBar(
          title: Text(Config.tituloApp),
          backgroundColor: Colors.deepPurpleAccent,
          centerTitle: true,
        ),
        body: Column(
          children: [
            CampoTexto(
              calcBloc.gasolinaController,
              'Gasolina',
              TextInputType.number,
            ),
            CampoTexto(
              calcBloc.etanolController,
              'Etanol',
              TextInputType.number,
            ),
          ],
        ),
      ),
    );
  }
}
