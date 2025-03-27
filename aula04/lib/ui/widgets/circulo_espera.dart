import 'package:flutter/material.dart';

class CirculoEspera extends StatelessWidget {
  const CirculoEspera({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 200,
        alignment: Alignment.center,
        child: Column(
          children: [
            CircularProgressIndicator(
              strokeWidth: 7.5,
              color: Colors.deepPurpleAccent,
            ),
            Text('Carregando...', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
