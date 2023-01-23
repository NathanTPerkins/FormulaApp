import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton(
            onPressed: _toN2L,
            child: Text("Newtons Second Law"),
          ),
          TextButton(
            onPressed: _toDensity,
            child: Text("Density"),
          ),
        ],
      ),
    );
  }

  void _toN2L() {
    Navigator.pushNamed(context, "/N2L");
  }

  void _toDensity() {
    Navigator.pushNamed(context, "/density");
  }
}
