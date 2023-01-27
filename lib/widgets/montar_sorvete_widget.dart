// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chiquinho/colors/palette.dart';
import 'package:chiquinho/models/sorvete.dart';
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
  double preco = 25.32;
  List<String> _tamanhoValues = [];
  List<String> _saboresValues = [];
  List<String> _opcaoLactante = ['Sim', 'Não'];

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
                    'Preço',
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 8),
                    child: Text(
                      'R\$${preco.toStringAsFixed(2)}',
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Container(
                height: 45,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        _buttonBackground(widget.sorvete.categoriaId),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
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
            ],
          ),
        ],
      ),
    );
    ;
  }
}
