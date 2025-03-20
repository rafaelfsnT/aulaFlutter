class Pokemon {
  String numero;
  String nome;
  String? imagem;

  Pokemon({required this.numero, required this.nome, this.imagem});
}

class Teste {
  var poke = Pokemon(numero: '1', nome: 'mewto');
}
