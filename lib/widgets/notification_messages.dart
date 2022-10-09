import 'package:flutter/material.dart';

class MessageNotifications extends StatelessWidget {
  final String image;
  final String title;
  final String respuesta1;
  final String respuesta2;

  const MessageNotifications({
    Key? key,
    required this.image,
    required this.title,
    required this.respuesta1,
    required this.respuesta2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 64.0,
          height: 64.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width - 128.0,
              child: Text(
                'Te respondieron en $title',
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 4.0),
            Row(
              children: [
                const Icon(
                  Icons.message_outlined,
                  size: 16.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 128.0,
                    child: Text(respuesta1)),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.message_outlined,
                  size: 16.0,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width - 128.0,
                    child: Text(respuesta2)),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: const [
                Text('Comprar', style: TextStyle(color: Colors.blue)),
                SizedBox(
                  width: 16.0,
                ),
                Text('Preguntar', style: TextStyle(color: Colors.blue)),
              ],
            )
          ],
        ),
      ],
    );
  }
}
