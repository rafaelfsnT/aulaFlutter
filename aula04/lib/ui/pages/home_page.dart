import 'dart:io';

import 'package:aula04/datasources/remote/pokemon_remote.dart';
import 'package:aula04/models/pokemon.dart';
import 'package:aula04/ui/pages/sobre_page.dart';
import 'package:aula04/ui/widgets/circulo_espera.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(
          title: Text(
            "Pokedex",
            style: TextStyle(
              color: Colors.white,
              fontFamily: Platform.isIOS ? 'San Francisco' : 'Roboto',
            ),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: _abrirSobre,
              icon: Icon(Icons.catching_pokemon_outlined),
              color: Colors.white,
            ),
          ],
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
        return Padding(
          padding: EdgeInsets.all(6),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(6),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      dados[index].nome,
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 15),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _abrirSobre() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SobrePage()),
    );
  }
}
