import 'package:flutter/cupertino.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CupertinoColors.activeBlue,
        width: 120,
        height: 20,
        child: const Text(
          "cool",
          style: TextStyle(color: CupertinoColors.activeOrange),
        ),
      ),
    );
  }
}
