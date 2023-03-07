import 'package:flutter/material.dart';
import 'package:s40_2011_simulator/constants/env_vars.dart';

class ScaffoldHeader extends StatefulWidget {
  const ScaffoldHeader({super.key});

  @override
  State<ScaffoldHeader> createState() => _ScaffoldHeaderState();
}

class _ScaffoldHeaderState extends State<ScaffoldHeader> {
  late int signalLevel;
  late bool alwaysOnline;
  late int batteryLevel;

  _ScaffoldHeaderState() {
    // TODO: retrieve from repository
    signalLevel = 100;
    batteryLevel = 10;
    alwaysOnline = true;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            // TODO: retrieve from theme config file
            "lib/assets/nokia-icons/symbols/header-indicators/header-bg.png"),
        SizedBox(
          height: 22, // TODO: Apply scale factor
          width: EnvVars.screenWidth,
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
              Image.asset(
                  "lib/assets/nokia-icons/symbols/header-indicators/battery-low.png"),
              Image.asset(
                  "lib/assets/nokia-icons/symbols/header-indicators/gprs.png"),
            ],
          ),
        ),
      ],
    );
  }
}
