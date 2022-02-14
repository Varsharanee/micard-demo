import 'package:flutter/material.dart';
import 'package:flutter_micard_demo/micardpage.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.icon, required this.title});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
            leading: Icon(icon, color: Colors.teal),
            title: Text(title, style: cardText)),
      ),
    );
  }
}
