// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chiquinho/models/sorvete.dart';
import 'package:chiquinho/screens/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:chiquinho/colors/palette.dart';

class SorvetesWidget extends StatelessWidget {
  const SorvetesWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Sorvete sorvete;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductScreen(sorvete: casquinha))),
              child: Card(
                elevation: 4,
                color: Palette.homeCard3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset('assets/images/casquinha.png',
                          width: 125, height: 135, fit: BoxFit.contain),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Casquinhas',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductScreen(sorvete: caneca))),
              child: Card(
                elevation: 4,
                color: Palette.homeCard3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/caneca.png',
                        width: 125,
                        height: 135,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Canecas',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductScreen(sorvete: pote))),
              child: Card(
                elevation: 4,
                color: Palette.homeCard3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/nopote.png',
                        width: 125,
                        height: 135,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'No pote',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductScreen(sorvete: mix))),
              child: Card(
                elevation: 4,
                color: Palette.homeCard3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/mix.png',
                        width: 125,
                        height: 135,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Mix',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductScreen(sorvete: milkShake))),
              child: Card(
                elevation: 4,
                color: Palette.homeCard3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/milkshake.png',
                        width: 125,
                        height: 135,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Milk Shake',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ProductScreen(sorvete: ovomaltine))),
              child: Card(
                elevation: 4,
                color: Palette.homeCard3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/ovomaltine.png',
                        width: 125,
                        height: 135,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Ovomaltine',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
