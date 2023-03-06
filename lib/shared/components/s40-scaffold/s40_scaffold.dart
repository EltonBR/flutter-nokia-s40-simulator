import 'package:flutter/material.dart';
import 'package:s40_2011_simulator/constants/env_vars.dart';

class S40Scaffold extends StatelessWidget {
  final Widget header;
  final Widget body;
  final Widget footer;
  final Widget? background;

  S40Scaffold(
      {super.key,
      required this.header,
      required this.body,
      required this.footer,
      this.background});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF333333),
        body: Center(
          child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: EnvVars.screenheight,
                maxHeight: EnvVars.screenheight,
                minWidth: EnvVars.screenWidth,
                maxWidth: EnvVars.screenWidth,
              ),
              child: Container(
              color: Colors.white,
                width: EnvVars.screenWidth,
                height: EnvVars.screenheight,
                child: Stack(
                  children: [
                    if (background != null) background!,
                    body,
                    Positioned(top: 0, left: 0, child: header),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      child: footer,
                    )
                  ],
                ),
              )),
        ));
  }
}
