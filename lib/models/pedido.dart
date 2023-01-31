class Pedido {
  final String imagePath;
  final String tamanho;
  final String tipo;
  final String sabor;
  final String lactante;
  final int qtd;
  final int id;
  double preco;

  Pedido(
      {required this.imagePath,
      required this.tamanho,
      required this.tipo,
      required this.sabor,
      required this.lactante,
      required this.preco,
      required this.qtd,
      required this.id});
}

List<Pedido> pedidos = [];
