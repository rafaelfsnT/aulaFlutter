import 'dart:io';

import 'package:flutter/material.dart';

class BarraTitulo {
  PreferredSizeWidget criar(String titulo, {List<Widget>? acoes}) {
    return AppBar(
      title: Text(
        titulo,
        style: TextStyle(
          color: Colors.white,
          fontFamily: Platform.isIOS ? 'San Francisco' : 'Roboto',
        ),
      ),
      backgroundColor: Colors.deepPurple,
      centerTitle: true,
      actions: acoes,
    );
  }
}
