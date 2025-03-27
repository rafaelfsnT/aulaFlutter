import 'package:aula04/config.dart';
import 'package:aula04/models/pokemon.dart';
import 'package:aula04/service/cliente_http.dart';

class PokemonRemote {
  final _clientHttp = ClientHttp();

  PokemonRemote();
  Future<List<Pokemon>> get() async {
    final lista = await _clientHttp.getJson(linkAPI, tagJson: 'pokemon');

    await Future.delayed(Duration(seconds: 3));
    return lista.map((e) => Pokemon.fromMap(e)).toList();

    /*
      List<Pokemon> listaPoke = [];
      for (var item in lista) {
        listaPoke.add( Pokemon.fromMap(item));
      }
      return listaPoke;
      */
  }
}
