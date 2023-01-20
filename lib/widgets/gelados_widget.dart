import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GeladosWidget extends StatelessWidget {
  const GeladosWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/supershake.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/chiquinhosss.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/linha.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}
