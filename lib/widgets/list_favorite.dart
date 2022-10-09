import 'package:flutter/material.dart';

class ListFavorite extends StatelessWidget {
  final String image;
  final String precio;
  final String por;
  final String title;
  final bool gratis;

  const ListFavorite({
    Key? key,
    required this.image,
    required this.por,
    required this.title,
    this.gratis = false,
    required this.precio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 72.0,
          width: 72.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'S/ $precio',
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 2.0),
            Text('12x S/ $por', style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 4.0),
            SizedBox(
              width: MediaQuery.of(context).size.width - 116,
              child: Text(
                title,
                style: const TextStyle(fontSize: 16.0),
              ),
            ),
            gratis
                ? Row(
                    children: [
                      const Icon(Icons.local_shipping, color: Colors.green),
                      const SizedBox(width: 4.0),
                      const Text(
                        'Envío gratis',
                        style: TextStyle(color: Colors.green, fontSize: 16.0),
                      ),
                    ],
                  )
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
