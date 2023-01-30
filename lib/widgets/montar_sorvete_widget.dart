// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chiquinho/colors/palette.dart';
import 'package:chiquinho/models/pedido.dart';
import 'package:chiquinho/models/sorvete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MontarChiquinhoWidget extends StatefulWidget {
  final Sorvete sorvete;
  const MontarChiquinhoWidget({
    Key? key,
    required this.sorvete,
  }) : super(key: key);

  @override
  State<MontarChiquinhoWidget> createState() => _MontarChiquinhoWidgetState();
}

class _MontarChiquinhoWidgetState extends State<MontarChiquinhoWidget> {
  String _tamanhoValue = '';
  String _saborValue = '';
  String _lactante = '';
  double _preco = 0;
  int _qtd = 0;
  List<String> _tamanhoValues = [];
  List<String> _saboresValues = [];
  List<String> _opcaoLactante = ['Sim', 'Não'];

  void _mudarPreco(String size) {
    int categoria = widget.sorvete.categoriaId;
    if (categoria == 0) {
      if (size.contains('Casquinha')) {
        setState(() {
          _preco = 4;
        });
      } else {
        setState(() {
          _preco = 7.5;
        });
      }
    } else if (categoria == 1) {
      setState(() {
        _preco = 11.9;
      });
    } else if (categoria == 2) {
      setState(() {
        _preco = 19.9;
      });
    } else if (categoria == 3) {
      setState(() {
        _preco = 15.9;
      });
    } else if (categoria == 4) {
      if (size == '300') {
        setState(() {
          _preco = 13;
        });
      } else if (size == '400') {
        _preco = 15;
      } else {
        setState(() {
          _preco = 17;
        });
      }
    } else if (categoria == 5) {
      setState(() {
        _preco = 18;
      });
    }
  }

  Color _buttonBackground(int index) {
    Color color;
    if (index == 0) {
      color = Color(0xFF0279A5);
    } else if (index == 1) {
      color = Color(0xFF62184D);
    } else if (index == 2) {
      color = Colors.green;
    } else if (index == 3) {
      color = Color(0xFFF3BCC2);
    } else if (index == 4) {
      color = Color(0xFF90D3ED);
    } else if (index == 5) {
      color = Color(0xFFFFD082);
    } else {
      color = Colors.green;
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      _tamanhoValues = widget.sorvete.tamanho;
      _saboresValues = widget.sorvete.sabores;
    });
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Monte seu chiquinho!',
                style: TextStyle(fontSize: 26, color: Color(0xFF303030)),
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
                      value: _tamanhoValue.isNotEmpty ? _tamanhoValue : null,
                      onChanged: (value) {
                        setState(() {
                          _tamanhoValue = value!.toString();
                        });
                        _mudarPreco(_tamanhoValue);
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
                height: 15,
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
                      value: _saborValue.isNotEmpty ? _saborValue : null,
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
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lactante?',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: DropdownButton(
                      elevation: 8,
                      hint: Text('Lactante?'),
                      value: _lactante.isNotEmpty ? _lactante : null,
                      onChanged: (value) {
                        setState(() {
                          _lactante = value!.toString();
                        });
                      },
                      items: _opcaoLactante.map(
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
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Quantidade',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              if (_qtd == 0) {
                                setState(() {
                                  _qtd = 0;
                                });
                              } else {
                                setState(() {
                                  _qtd--;
                                });
                              }
                            },
                            icon: Icon(
                              CupertinoIcons.minus,
                              size: 24,
                            )),
                        Text(
                          '${_qtd}',
                          style: TextStyle(fontSize: 20),
                        ),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                _qtd++;
                              });
                            },
                            icon: Icon(
                              CupertinoIcons.plus,
                              size: 24,
                            ))
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              _buttonBackground(widget.sorvete.categoriaId),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          if (_lactante.isNotEmpty &&
                              _tamanhoValue.isNotEmpty &&
                              _qtd > 0 &&
                              _saborValue.isNotEmpty) {
                            pedidos.add(Pedido(
                                tamanho: _tamanhoValue,
                                lactante: this._lactante,
                                preco: this._preco,
                                qtd: this._qtd,
                                sabor: this._saborValue,
                                tipo: widget.sorvete.nome));
                          } else {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                      title: Text('Algo deu errado 🤨'),
                                      content: Text('Verifique os campos!'),
                                      actions: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context, 'OK');
                                            },
                                            child: Text('OK'))
                                      ],
                                    ));
                          }
                        },
                        child: Text(
                          'Adicionar',
                          style: TextStyle(
                              fontSize: 24,
                              color: widget.sorvete.categoriaId == 0 ||
                                      widget.sorvete.categoriaId == 1 ||
                                      widget.sorvete.categoriaId == 2
                                  ? Palette.scaffoldBackground
                                  : Color(0xFFF303030)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: Text(
                        'R\$${_preco.toStringAsFixed(2)}',
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
