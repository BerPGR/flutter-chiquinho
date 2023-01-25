// ignore_for_file: public_member_api_docs, sort_constructors_first
class Categoria {
  final int categoryId;
  final String nome;

  Categoria({
    required this.categoryId,
    required this.nome,
  });
}

final casquinhaCategory = Categoria(categoryId: 0, nome: 'Casquinha');
final canecasCategory = Categoria(categoryId: 1, nome: 'Caneca');
final poteCategory = Categoria(categoryId: 2, nome: 'No pote');
final mixCategory = Categoria(categoryId: 3, nome: 'Mix');
final milkshakeCategory = Categoria(categoryId: 4, nome: 'Milk Shake');
final ovomaltineCategory = Categoria(categoryId: 5, nome: 'Ovomaltine');

final categorias = [
  casquinhaCategory,
  canecasCategory,
  poteCategory,
  mixCategory,
  milkshakeCategory,
  ovomaltineCategory
];
