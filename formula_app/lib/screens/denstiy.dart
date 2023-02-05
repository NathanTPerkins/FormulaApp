import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DensityPage extends StatefulWidget {
  const DensityPage({super.key});

  @override
  State<DensityPage> createState() => _DensityPageState();
}

class _DensityPageState extends State<DensityPage> {
  TextEditingController massController = TextEditingController();
  TextEditingController volumeController = TextEditingController();
  String mass = "";
  String volume = "";

  double _toDensity(String mass, String volume) {
    return (double.tryParse(mass) ?? 0) / (double.tryParse(volume) ?? 0);
  }

  void _toHome() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: CupertinoButton(
          child: Text("Home"),
          onPressed: _toHome,
          padding: EdgeInsets.all(10),
        ),
      ),
      child: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //PAGE TITLE
              Container(
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.height * 0.06),
                child: const Text(
                  "Density",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 40,
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
                  _toDensity(mass, volume).toStringAsPrecision(5),
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
                  placeholder: "Volume",
                  onChanged: ((value) {
                    setState(() {
                      volume = value;
                    });
                  }),
                  controller: volumeController,
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
