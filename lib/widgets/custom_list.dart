import 'package:flutter/material.dart';

class CustomList extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;

  const CustomList({
    Key? key,
    required this.icon,
    required this.title,
    this.color = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: Colors.white),
      ),
      title: Text(title),
    );
  }
}
