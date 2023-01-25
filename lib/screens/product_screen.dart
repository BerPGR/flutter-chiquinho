// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chiquinho/product/productBackground.dart';
import 'package:flutter/material.dart';

import 'package:chiquinho/models/sorvete.dart';

class ProductScreen extends StatefulWidget {
  final Sorvete sorvete;

  const ProductScreen({
    Key? key,
    required this.sorvete,
  }) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ProductBackground(
            screenHeight: MediaQuery.of(context).size.height,
            colorId: widget.sorvete.categoriaId,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
