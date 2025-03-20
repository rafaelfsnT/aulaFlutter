import 'dart:io';

import 'package:aula04/ui/pages/sobre_page.dart';
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
              icon: Icon(Icons.help_outline_outlined),
              color: Colors.white,
            ),
          ],
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
