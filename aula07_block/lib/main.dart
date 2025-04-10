import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:aula07_block/app/android_app.dart';
import 'package:aula07_block/app/ios_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(kIsWeb || Platform.isAndroid? AndroidApp() : IosApp()); //condição if else
}
