abstract class Controller {
  final void Function() setStateFn;

  Controller(this.setStateFn);
  void refreshUI() {
    setStateFn();
  }

  void dispose();
}
