import 'package:aula07_block/config.dart';
import 'package:aula07_block/ui/ios/home_page_ios.dart';
import 'package:flutter/cupertino.dart';

class IosApp extends StatelessWidget {
  const IosApp({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: Config.tituloApp,
      debugShowCheckedModeBanner: false,
      home: HomePageIos(),
    );
  }
}
