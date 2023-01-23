import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DensityPage extends StatefulWidget {
  const DensityPage({super.key});

  @override
  State<DensityPage> createState() => _DensityPageState();
}

class _DensityPageState extends State<DensityPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "Density",
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
