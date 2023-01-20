import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GeladosWidget extends StatelessWidget {
  const GeladosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              print(width);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                'assets/images/supershake.png',
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/chiquinhosss.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/linha.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
