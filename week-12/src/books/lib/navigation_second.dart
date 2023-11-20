import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen (Yofandra)'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              child: const Text('Purple'),
              onPressed: () {
                color = Color.fromARGB(255, 110, 0, 213);
                Navigator.pop(context, color);
              }),
          ElevatedButton(
              child: const Text('Cyan'),
              onPressed: () {
                color = Color.fromARGB(255, 17, 227, 255);
                Navigator.pop(context, color);
              }),
          ElevatedButton(
              child: const Text('Tosca'),
              onPressed: () {
                color = Color.fromARGB(255, 0, 201, 158);
                Navigator.pop(context, color);
              }),
        ],
      )),
    );
  }
}
