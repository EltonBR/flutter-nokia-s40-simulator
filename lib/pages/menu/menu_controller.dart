import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:s40_2011_simulator/core/controller.dart';

class MenuPageController extends Controller {
  BuildContext context;

  late FocusNode focus;
  late FocusNode focus2;
  bool focusState = false;
  bool focusState2 = false;

  MenuPageController(super.setStateFn, this.context) {
    focus = FocusNode(onKey: (focusNode, key) {
      if (key.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
        FocusScope.of(context).requestFocus(focus2);
      }
      return KeyEventResult.handled;
    });

    focus2 = FocusNode(onKey: (focusNode, key) {
      print(key.logicalKey);
      if (key.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
        focusNode.previousFocus();
      }

      return KeyEventResult.handled;
    });
  }

  @override
  void dispose() {
    focus.dispose();
    focus2.dispose();
  }
}
