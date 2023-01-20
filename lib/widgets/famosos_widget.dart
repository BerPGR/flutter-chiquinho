import 'package:chiquinho/colors/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SorvetesWidget extends StatelessWidget {
  const SorvetesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              elevation: 4,
              color: Palette.homeCard3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.asset('assets/images/casquinha.png',
                        width: 125, height: 125, fit: BoxFit.contain),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Casquinhas',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            Card(
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
                      height: 125,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Canecas',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
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
            Card(
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
                      height: 125,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'No pote',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            Card(
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
                      height: 125,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Mix',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
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
            Card(
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
                      height: 125,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Milk Shake',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
            Card(
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
                      height: 125,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Ovomaltine',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
