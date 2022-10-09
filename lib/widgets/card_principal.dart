import 'package:flutter/material.dart';

import '../pages/detail_product_page.dart';
import '../utils/data.dart';

class CardPrincipal extends StatelessWidget {

  final int index;

  const CardPrincipal({
    Key? key, required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          (MaterialPageRoute(
              builder: (context) => DetailProduct(
                    productIndex: producto[index],
                  )))),
      child: Card(
        elevation: 8.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('assets/${producto[index]['img'][0]}')),
              Text(producto[index]['title']),
              Column(
                children: [
                  Text(
                producto[index]['price'],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              producto[index]['gratis']
                  ? const Text(
                      'Envío Gratis',
                      style: TextStyle(color: Colors.green),
                    )
                  : const SizedBox(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
