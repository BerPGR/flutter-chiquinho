class Pedido {
  final String tamanho;
  final String tipo;
  final String sabor;
  final String lactante;
  double preco;
  int qtd;

  Pedido({
    required this.tamanho,
    required this.tipo,
    required this.sabor,
    required this.lactante,
    required this.preco,
    required this.qtd,
  });
}

List<Pedido> pedidos = [];
