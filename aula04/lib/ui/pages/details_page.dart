import 'package:aula04/models/pokemon.dart';
import 'package:aula04/ui/widgets/barra_titulo.dart';
import 'package:aula04/ui/widgets/image_web.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final Pokemon pokemon;

  const DetailsPage(this.pokemon, {super.key});
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: BarraTitulo().criar(pokemon.nome),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('#${pokemon.numero} - ${pokemon.nome}'),
            ImageWeb(link: pokemon.getImagem()),
          ],
        ),
      ),
    );
  }
}
