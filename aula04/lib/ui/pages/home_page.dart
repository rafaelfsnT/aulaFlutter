import 'dart:io';
import 'package:aula04/datasources/remote/pokemon_remote.dart';
import 'package:aula04/models/pokemon.dart';
import 'package:aula04/ui/pages/details_page.dart';
import 'package:aula04/ui/pages/sobre_page.dart';
import 'package:aula04/ui/widgets/barra_titulo.dart';
import 'package:aula04/ui/widgets/circulo_espera.dart';
import 'package:aula04/ui/widgets/image_web.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        appBar: BarraTitulo().criar(
          'Pokedex',
          acoes: [
            IconButton(
              onPressed: _abrirSobre,
              icon: Icon(Icons.catching_pokemon_outlined),
              color: Colors.white,
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.deepPurple),
                child: Column(
                  children: [
                    Icon(Icons.directions_walk, size: 70),
                    Text('Pokedex'),
                  ],
                ),
              ),
              ListTile(
                title: Text('Sobre'),
                subtitle: Text('Sobre a POKEDEX'),
                leading: Icon(Icons.help_outline),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: _abrirSobre,
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                future: PokemonRemote().get(),
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                    case ConnectionState.waiting:
                      return CirculoEspera();
                    default:
                      return _criarLista(context, snapshot.data ?? []);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _criarLista(BuildContext context, List<Pokemon> dados) {
    return ListView.builder(
      itemCount: dados.length,
      padding: EdgeInsets.all(12),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DetailsPage(dados[index])),
            );
          },
          child: _criarItem(dados[index]),
        );
      },
    );
  }

  Widget _criarItem(Pokemon pokemon) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(6),
          child: Row(
            children: [
              ImageWeb(link: pokemon.getImagem(), h: 75, w: 75),
              Expanded(
                child: Text(pokemon.nome, style: TextStyle(fontSize: 25)),
              ),
              Icon(Icons.arrow_forward_ios, size: 15),
            ],
          ),
        ),
      ),
    );
  }

  void _abrirSobre() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SobrePage()),
    );
  }
}
