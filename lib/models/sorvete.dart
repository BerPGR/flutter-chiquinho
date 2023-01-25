// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sorvete {
  final String nome;
  final int categoriaId;
  final List sabores;
  final List? tamanho;
  final List? mls;

  Sorvete({
    required this.nome,
    required this.categoriaId,
    required this.sabores,
    this.tamanho,
    this.mls,
  });
}

Sorvete casquinha = Sorvete(
    nome: 'Casquinha',
    categoriaId: 0,
    sabores: ['Chocolate', 'Caramelo', 'Morango'],
    tamanho: ['Casquinha', 'Cascão']);

Sorvete caneca =
    Sorvete(nome: 'Caneca', categoriaId: 1, sabores: ['Canecake'], mls: [240]);

Sorvete pote = Sorvete(nome: 'Pote', categoriaId: 2, sabores: [
  'Ninho com Nutella',
  'Chocolate Intenso',
  'Doce de Leite',
  'Morango'
], mls: [
  950
]);

Sorvete mix = Sorvete(
    nome: 'Mix',
    categoriaId: 3,
    sabores: ['Maracuja Trufado', 'Doce de Leite', 'Ouro Branco'],
    mls: [300]);

Sorvete milkShake = Sorvete(nome: 'Milk Shake', categoriaId: 4, sabores: [
  'Brigadeiro',
  'Baunilha',
  'Chocolate',
  'Morango',
  'Maracuja',
], mls: [
  300,
  400,
  500
]);

Sorvete ovomaltine = Sorvete(nome: 'Ovomaltine', categoriaId: 5, sabores: []);
