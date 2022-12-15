import 'package:flutter/cupertino.dart';

enum UnknownIGLVar {
  PRESSURE,
  VOLUME,
  N_MOLS,
  TEMPURATURE,
}

class IdealGasLawPage extends StatefulWidget {
  const IdealGasLawPage({super.key});

  @override
  State<IdealGasLawPage> createState() => _IdealGasLawPageState();
}

class _IdealGasLawPageState extends State<IdealGasLawPage> {
  UnknownIGLVar unknown = UnknownIGLVar.PRESSURE;

  String unknownToString(UnknownIGLVar uvar) {
    switch (uvar) {
      case UnknownIGLVar.PRESSURE:
        return "Pressure";
      case UnknownIGLVar.N_MOLS:
        return "Number of Moles";
      case UnknownIGLVar.TEMPURATURE:
        return "Tempurature";
      case UnknownIGLVar.VOLUME:
        return "Volume";
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: CupertinoColors.destructiveRed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(unknownToString(unknown)),
            Spacer(flex: 1),
            IGLButton(
              onPressed: () {
                setState(() {
                  unknown = UnknownIGLVar.PRESSURE;
                });
              },
              buttonText: "Pressure",
            ),
            Spacer(),
            IGLButton(
              onPressed: () {
                setState(() {
                  unknown = UnknownIGLVar.N_MOLS;
                });
              },
              buttonText: "Number of Moles",
            ),
            Spacer(),
            IGLButton(
              onPressed: () {
                setState(() {
                  unknown = UnknownIGLVar.VOLUME;
                });
              },
              buttonText: "Volume",
            ),
            Spacer(),
            IGLButton(
              onPressed: () {
                setState(() {
                  unknown = UnknownIGLVar.TEMPURATURE;
                });
              },
              buttonText: "Tempurature",
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class IGLButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const IGLButton({Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      pressedOpacity: 0.9,
      color: CupertinoColors.activeGreen,
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
