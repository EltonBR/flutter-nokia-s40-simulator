import 'package:flutter/material.dart';
import 'package:s40_2011_simulator/constants/env_vars.dart';

class ScaffoldFooter extends StatelessWidget {
  final String leftLabel;
  final String centerLabel;
  final String rightLabel;
  const ScaffoldFooter({
    super.key,
    this.leftLabel = "",
    this.centerLabel = "",
    this.rightLabel = "",
  });

  get textStyle => const TextStyle(color: Colors.white, fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: EnvVars.screenWidth,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                leftLabel,
                style: textStyle,
                textAlign: TextAlign.start,
              ),
            ),
            Expanded(
              child: Text(
                centerLabel,
                style: textStyle,
                textAlign: TextAlign.center,
              ),
            ),
            Expanded(
              child: Text(
                rightLabel,
                style: textStyle,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
