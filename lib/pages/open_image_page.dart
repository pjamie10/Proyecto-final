import 'package:flutter/material.dart';

class OpenImage extends StatelessWidget {

  final String image;

  const OpenImage({super.key, required this.image,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme:const IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Image.asset(image),
      ),
    );
  }
}