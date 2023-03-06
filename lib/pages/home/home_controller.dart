import 'package:s40_2011_simulator/core/controller.dart';

class HomeController extends Controller {
  int counter = 0;
  HomeController(setStateFn) : super(setStateFn);

  increment() {
    counter++;
    refreshUI();
  }

  @override
  void dispose() {
  }
}
