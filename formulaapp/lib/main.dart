import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screens/idealGasLaw.dart';
import 'screens/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Formula App',
      theme: CupertinoThemeData(
        primaryColor: Color.fromARGB(0, 39, 119, 59),
      ),
      home: BackgroundWidget(
        child: IdealGasLawPage(),
      ),
    );
  }
}

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: child,
    );
  }
}
