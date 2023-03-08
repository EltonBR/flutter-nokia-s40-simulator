import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:s40_2011_simulator/pages/menu/menu_controller.dart';
import 'package:s40_2011_simulator/shared/components/s40-scaffold/s40_scaffold.dart';
import 'package:s40_2011_simulator/shared/components/scaffold_footer/scaffold_footer_view.dart';
import 'package:s40_2011_simulator/shared/components/scaffold_header/scaffold_header_view.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late MenuPageController _controller;

  @override
  void initState() {
    _controller = MenuPageController(() => setState(() {}), context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return S40Scaffold(
        header: const ScaffoldHeader(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Menu"),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 0.93,
                children: [
                  Focus(
                    focusNode: _controller.focus,
                    autofocus: true,
                    onFocusChange: (state) {
                      print('1 $state');
                      _controller.focusState = state;
                      setState(() {});
                    },
                    child: GridMenuItem(
                      selected: _controller.focusState,
                      imageIcon: Image.asset(
                          "lib/assets/nokia-icons/menu/message.png"),
                      labelText: "Messaging",
                    ),
                  ),
                  Focus(
                    focusNode: _controller.focus2,
                    onFocusChange: (state) {
                      print('2 state');
                      _controller.focusState2 = state;
                      setState(() {});
                    },
                    child: GridMenuItem(
                      selected: _controller.focusState2,
                      imageIcon: Image.asset(
                          "lib/assets/nokia-icons/menu/message.png"),
                      labelText: "Messaging",
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        footer: const ScaffoldFooter(
          leftLabel: "Options",
          centerLabel: "Select",
          rightLabel: "Exit",
        ));
  }
}

class GridMenuItem extends StatelessWidget {
  final String labelText;

  final Image imageIcon;

  final bool selected;

  const GridMenuItem(
      {super.key,
      required this.imageIcon,
      required this.labelText,
      required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: (selected) ? Colors.greenAccent : null,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(top: 7, bottom: 11),
          child: imageIcon,
        ),
        Text(
          labelText,
          style: TextStyle(color: Colors.black, fontSize: 17),
        )
      ]),
    );
  }
}
