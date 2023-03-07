import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:s40_2011_simulator/shared/components/s40-scaffold/s40_scaffold.dart';
import 'package:s40_2011_simulator/shared/components/scaffold_footer/scaffold_footer_view.dart';
import 'package:s40_2011_simulator/shared/components/scaffold_header/scaffold_header_view.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return S40Scaffold(
        header: ScaffoldHeader(),
        body: Text("hello"),
        footer: ScaffoldFooter(
          leftLabel: "Options",
          centerLabel: "Select",
          rightLabel: "Exit",
        ));
  }
}
