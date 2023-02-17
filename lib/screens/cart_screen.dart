// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chiquinho/colors/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:chiquinho/models/pedido.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double _total = 0;

  void removeSorvete(int id) {
    setState(() {
      pedidos.removeWhere((pedido) => pedido.id == id);
    });
    atualizaPreco();
  }

  void atualizaPreco() {
    setState(() {
      this._total = 0;
    });
    for (final pedido in pedidos) {
      setState(() {
        this._total += pedido.preco;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    atualizaPreco();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Seus pedidos!',
                        style: TextStyle(fontSize: 28),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      for (final pedido in pedidos)
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: BoxDecoration(
                                    color: Palette.homeCard3,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.asset(
                                    pedido.imagePath,
                                    height: 140,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${pedido.tipo} ${pedido.sabor}',
                                        style: TextStyle(
                                            fontSize: 20,
                                            overflow: TextOverflow.ellipsis),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        '${pedido.tamanho}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        'Quantidade: ${pedido.qtd}',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.5,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {
                                                  removeSorvete(pedido.id);
                                                },
                                                icon: Icon(
                                                  CupertinoIcons.trash,
                                                  color: Colors.red,
                                                )),
                                            Text(
                                                'R\$${pedido.preco.toStringAsFixed(2)}')
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'R\$${this._total.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          if (pedidos.length > 0)
            Positioned(
              bottom: 0,
              child: Container(
                height: 35,
                width: MediaQuery.of(context).size.width * 0.7,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Palette.homeCard2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      pedidos.clear();
                    });
                  },
                  child: Text(
                    'Finalizar pedido',
                    style: TextStyle(color: Color(0xFF303030), fontSize: 20),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
