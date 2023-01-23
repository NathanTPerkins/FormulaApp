import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewtonsSecondLawPage extends StatefulWidget {
  const NewtonsSecondLawPage({super.key});

  @override
  State<NewtonsSecondLawPage> createState() => _NewtonsSecondLawPageState();
}

class _NewtonsSecondLawPageState extends State<NewtonsSecondLawPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Newtons Second Law",
        textAlign: TextAlign.center,
      ),
    );
  }
}
