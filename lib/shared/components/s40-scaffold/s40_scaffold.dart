import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:s40_2011_simulator/constants/env_vars.dart';

class S40Scaffold extends StatefulWidget {
  final Widget header;
  final Widget body;
  final Widget footer;
  final Widget? background;
  final Function(RawKeyEvent)? onKeyEvent;

  S40Scaffold(
      {super.key,
      required this.header,
      required this.body,
      required this.footer,
      this.background,
      this.onKeyEvent});

  @override
  State<S40Scaffold> createState() => _S40ScaffoldState();
}

class _S40ScaffoldState extends State<S40Scaffold> {
  void _keyListener(RawKeyEvent keyEvent) {
    if (widget.onKeyEvent != null) {
      widget.onKeyEvent!(keyEvent);
    }
  }

  @override
  void initState() {
    if (widget.onKeyEvent != null) {
      RawKeyboard.instance.addListener(_keyListener);
    }
    super.initState();
  }

  @override
  void dispose() {
    if (widget.onKeyEvent != null) {
      RawKeyboard.instance.removeListener(_keyListener);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF333333),
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
                if (widget.background != null) widget.background!,
                Padding(
                  // TODO: apply scale factor
                  padding: const EdgeInsets.fromLTRB(0, 22, 0, 25),
                  child: widget.body,
                ),
                Positioned(top: 0, left: 0, child: widget.header),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: widget.footer,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
