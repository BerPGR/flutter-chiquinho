// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sorvete {
  final String nome;
  final int categoriaId;
  final List<String> sabores;
  final List<String>? tamanho;
  final String imagePath;

  Sorvete(
      {required this.nome,
      required this.categoriaId,
      required this.sabores,
      this.tamanho,
      required this.imagePath});
}

Sorvete casquinha = Sorvete(
    nome: 'Casquinha',
    categoriaId: 0,
    sabores: ['Chocolate', 'Caramelo', 'Morango'],
    tamanho: ['Casquinha', 'Cascão'],
    imagePath: 'assets/images/casquinha.png');

Sorvete caneca = Sorvete(
    nome: 'Caneca',
    categoriaId: 1,
    sabores: ['Canecake'],
    tamanho: ['240'],
    imagePath: 'assets/images/caneca.png');

Sorvete pote = Sorvete(
    nome: 'Pote',
    categoriaId: 2,
    sabores: [
      'Ninho com Nutella',
      'Chocolate Intenso',
      'Doce de Leite',
      'Morango'
    ],
    tamanho: ['950'],
    imagePath: 'assets/images/nopote.png');

Sorvete mix = Sorvete(
    nome: 'Mix',
    categoriaId: 3,
    sabores: ['Maracuja Trufado', 'Doce de Leite', 'Ouro Branco'],
    tamanho: ['300'],
    imagePath: 'assets/images/mix.png');

Sorvete milkShake = Sorvete(
    nome: 'Milk Shake',
    categoriaId: 4,
    sabores: [
      'Brigadeiro',
      'Baunilha',
      'Chocolate',
      'Morango',
      'Maracuja',
    ],
    tamanho: ['300', '400', '500'],
    imagePath: 'assets/images/milkshake.png');

Sorvete ovomaltine = Sorvete(
    nome: 'Ovomaltine',
    categoriaId: 5,
    sabores: ['Morango'],
    tamanho: ['300'],
    imagePath: 'assets/images/ovomaltine.png');
