import 'package:flutter/material.dart';
import 'package:s40_2011_simulator/constants/keymap.dart';
import 'package:s40_2011_simulator/core/controller.dart';

class HomeController extends Controller {
  final BuildContext context;
  HomeController(setStateFn, this.context) : super(setStateFn);

  @override
  void dispose() {}

  handleKeypress(RawKeyEvent rawKey) {
    // if true current element is focusable eg: TextField
    if (FocusManager.instance.primaryFocus.runtimeType != FocusScopeNode) {
      return;
    }
    if (rawKey.isKeyPressed(KeyMap.navPadEnter)) {
          print(rawKey.logicalKey.keyLabel);
      Navigator.of(context).pushReplacementNamed('/menu');
    }
  }
}
