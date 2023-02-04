import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SIConversionsPage extends StatefulWidget {
  const SIConversionsPage({super.key});

  @override
  State<SIConversionsPage> createState() => _SIConversionsPageState();
}

class _SIConversionsPageState extends State<SIConversionsPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "SI Conversions",
        style: TextStyle(
          color: Colors.green,
        ),
      ),
    );
  }
}
