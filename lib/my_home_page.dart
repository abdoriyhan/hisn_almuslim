import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tittle"), centerTitle: true),
      body: Column(
        children: [
          Text("Data", style: TextStyle(fontSize: 100)),
          Text("TypeData", style: TextStyle(fontSize: 100)),
        ],
      ),
    );
  }
}
