import 'package:flutter/services.dart';

/// map of [RawKeyEvent.logicalKey.keyLabel] or [KeyEvent.logicalKey.keyLabel]
class KeyMap {
  static const LogicalKeyboardKey selectionLeft = LogicalKeyboardKey.insert;
  static const LogicalKeyboardKey selectionRight = LogicalKeyboardKey.pageUp;
  static const LogicalKeyboardKey call = LogicalKeyboardKey.delete;
  static const LogicalKeyboardKey rightKey = LogicalKeyboardKey.pageDown;
  static const LogicalKeyboardKey navPadEnter = LogicalKeyboardKey.enter;
  static const LogicalKeyboardKey navPadUp = LogicalKeyboardKey.arrowUp;
  static const LogicalKeyboardKey navPadDown = LogicalKeyboardKey.arrowDown;
  static const LogicalKeyboardKey navPadLeft = LogicalKeyboardKey.arrowLeft;
  static const LogicalKeyboardKey navPadRight = LogicalKeyboardKey.arrowRight;
}
