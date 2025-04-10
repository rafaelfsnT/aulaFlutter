import 'package:aula07_block/config.dart';
import 'package:aula07_block/ui/android/home_page_a.dart';
import 'package:flutter/material.dart';

class AndroidApp extends StatelessWidget {
  const AndroidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Config.tituloApp,
      debugShowCheckedModeBanner: false,
      home: HomePageA(),
    );
  }
}
