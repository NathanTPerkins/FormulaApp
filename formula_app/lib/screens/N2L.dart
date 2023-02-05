import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewtonsSecondLawPage extends StatefulWidget {
  const NewtonsSecondLawPage({super.key});

  @override
  State<NewtonsSecondLawPage> createState() => _NewtonsSecondLawPageState();
}

class _NewtonsSecondLawPageState extends State<NewtonsSecondLawPage> {
  TextEditingController massController = TextEditingController();
  TextEditingController accelerationController = TextEditingController();

  String mass = "";
  String acc = "";

  void _toHome() {
    Navigator.pop(context);
  }

  double _toForce(String mass, String acc) {
    double force =
        (double.tryParse(mass) ?? 0.0) * (double.tryParse(acc) ?? 0.0);
    return force;
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          padding: EdgeInsets.all(10),
          child: Text("Home"),
          onPressed: _toHome,
        ),
      ),
      child: SafeArea(
        child: Container(
          child: Column(
            children: [
              //PAGE TITLE
              Container(
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.06),
                child: const Text(
                  "Newton's Second Law",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              //DENSITY CALCULATION RESULT
              Container(
                alignment: Alignment.center,
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.06),
                child: Text(
                  _toForce(mass, acc).toStringAsPrecision(5),
                  style: const TextStyle(
                    color: CupertinoColors.systemRed,
                  ),
                ),
              ),

              //MASS TITLE
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Mass",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),

              //MASS TEXTFIELD
              Container(
                margin: const EdgeInsets.all(20),
                child: CupertinoTextField(
                  padding: const EdgeInsets.all(10),
                  showCursor: false,
                  placeholder: "Mass",
                  onChanged: ((value) {
                    setState(() {
                      mass = value;
                    });
                  }),
                  controller: massController,
                  keyboardType: TextInputType.number,
                ),
              ),

              //VOLUME TITLE
              Container(
                margin: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Volume",
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                ),
              ),

              //VOLUME TEXTFIELD
              Container(
                margin: const EdgeInsets.all(20),
                child: CupertinoTextField(
                  padding: const EdgeInsets.all(10),
                  showCursor: false,
                  placeholder: "Acceleration",
                  onChanged: ((value) {
                    setState(() {
                      acc = value;
                    });
                  }),
                  controller: accelerationController,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
