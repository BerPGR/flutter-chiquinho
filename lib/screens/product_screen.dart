// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chiquinho/colors/palette.dart';
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
            screenHeight: MediaQuery.of(context).size.height * 0.5,
            colorId: widget.sorvete.categoriaId,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: widget.sorvete.categoriaId == 3 ||
                                    widget.sorvete.categoriaId == 4 ||
                                    widget.sorvete.categoriaId == 5
                                ? Colors.black87
                                : Palette.scaffoldBackground,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          widget.sorvete.imagePath,
                          fit: widget.sorvete.categoriaId == 4 ||
                                  widget.sorvete.categoriaId == 5
                              ? BoxFit.cover
                              : BoxFit.contain,
                          height: 240,
                          width: widget.sorvete.categoriaId == 4 ? 160 : 240,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
