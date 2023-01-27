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
  String _tamanhoValue = '';
  String _saborValue = '';
  List<String> _tamanhoValues = [];
  List<String> _saboresValues = [];

  @override
  Widget build(BuildContext context) {
    setState(() {
      _saboresValues = widget.sorvete.sabores;
      _tamanhoValues = widget.sorvete.tamanho!;
    });
    return Scaffold(
      body: Stack(
        children: [
          ProductBackground(
            screenHeight: MediaQuery.of(context).size.height * 0.51,
            colorId: widget.sorvete.categoriaId,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                        Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Text(
                            widget.sorvete.nome,
                            style: TextStyle(
                              fontSize: 24,
                              color: widget.sorvete.categoriaId == 3 ||
                                      widget.sorvete.categoriaId == 4 ||
                                      widget.sorvete.categoriaId == 5
                                  ? Colors.black87
                                  : Palette.scaffoldBackground,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          widget.sorvete.imagePath,
                          fit: BoxFit.contain,
                          height: widget.sorvete.categoriaId == 4 ? 260 : 240,
                          width: 240,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Monte seu chiquinho!',
                              style: TextStyle(
                                  fontSize: 26, color: Color(0xFF303030)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Tamanho',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: DropdownButton<String>(
                                    elevation: 8,
                                    hint: Text('Escolha!'),
                                    value: _tamanhoValue.isNotEmpty
                                        ? _tamanhoValue
                                        : null,
                                    onChanged: (value) {
                                      setState(() {
                                        _tamanhoValue = value!.toString();
                                      });
                                    },
                                    items: _tamanhoValues.map(
                                      (String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sabor',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: DropdownButton(
                                    elevation: 8,
                                    hint: Text('Escolha!'),
                                    value: _saborValue.isNotEmpty
                                        ? _saborValue
                                        : null,
                                    onChanged: (value) {
                                      setState(() {
                                        _saborValue = value!.toString();
                                      });
                                    },
                                    items: _saboresValues.map(
                                      (String value) {
                                        return DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
