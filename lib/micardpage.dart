import 'package:flutter/material.dart';
import 'reusable_classes.dart';

const headingText = TextStyle(
    fontSize: 25,
    letterSpacing: 2.0,
    fontWeight: FontWeight.bold,
    fontFamily: "Comic Neue");
const cardText =
    TextStyle(fontSize: 20, letterSpacing: 2.0, fontFamily: "Comic Neue");

class MiCardPage extends StatelessWidget {
  const MiCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("ID Card"),
          centerTitle: true,
          backgroundColor: Colors.teal.shade800,
          elevation: 0.0),
      backgroundColor: Colors.teal.shade500,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                radius: 95,
                backgroundColor: Colors.teal.shade100,
                child: CircleAvatar(
                    radius: 90,
                    backgroundImage: AssetImage("images/gitphoto.jfif"))),
            SizedBox(height: 15),
            Text("Jagtap Varsharanee", style: headingText),
            SizedBox(height: 5),
            Text("Flutter Developer", style: cardText),
            SizedBox(height: 5),
            ReusableCard(icon: Icons.call, title: "9999999999"),
            ReusableCard(icon: Icons.email, title: "example01@gmail.com")
          ],
        ),
      ),
    );
  }
}
