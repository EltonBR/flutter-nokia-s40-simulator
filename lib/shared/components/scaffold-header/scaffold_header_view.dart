import 'package:flutter/material.dart';

class ScaffoldHeader extends StatelessWidget {
  final int signalLevel;
  final bool alwaysOnline;
  final int batteryLevel;
  const ScaffoldHeader(
      {super.key,
      required this.signalLevel,
      required this.batteryLevel,
      this.alwaysOnline = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          // TODO: file of theme
            "lib/assets/nokia-icons/symbols/header-indicators/header-bg.png"),
        Container(
          height: 22,
          width: 240,
          child: Row(
            children: [
              Image.asset(
                  "lib/assets/nokia-icons/symbols/header-indicators/antenna.png"),
              if (signalLevel == 0)
                Image.asset(
                    "lib/assets/nokia-icons/symbols/header-indicators/signal-0.png")
              else if (signalLevel <= 25)
                Image.asset(
                    "lib/assets/nokia-icons/symbols/header-indicators/signal-25.png")
              else if (signalLevel > 25 && signalLevel <= 50)
                Image.asset(
                    "lib/assets/nokia-icons/symbols/header-indicators/signal-50.png")
              else if (signalLevel >= 50 && signalLevel <= 75)
                Image.asset(
                    "lib/assets/nokia-icons/symbols/header-indicators/signal-75.png")
              else if (signalLevel > 75)
                Image.asset(
                    "lib/assets/nokia-icons/symbols/header-indicators/signal-100.png"),
              Image.asset("lib/assets/nokia-icons/symbols/header-indicators/battery-low.png"),
              Image.asset("lib/assets/nokia-icons/symbols/header-indicators/gprs.png"),
            ],
          ),
        ),
      ],
    );
  }
}
