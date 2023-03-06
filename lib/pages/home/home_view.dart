import 'package:flutter/material.dart';
import 'package:s40_2011_simulator/pages/home/home_controller.dart';
import 'package:s40_2011_simulator/shared/components/s40-scaffold/s40_scaffold.dart';
import 'package:s40_2011_simulator/shared/components/scaffold-footer/scaffold_footer_view.dart';
import 'package:s40_2011_simulator/shared/components/scaffold-header/scaffold_header_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeController _controller;

  @override
  void initState() {
    _controller = HomeController(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return S40Scaffold(
      header: const ScaffoldHeader(
        batteryLevel: 100,
        signalLevel: 100,
        alwaysOnline: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 2, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("VIVO"),
            Text("05/03/2023"),
          ],
        ),
      ),
      footer: const ScaffoldFooter(
        leftLabel: 'Ir para',
        centerLabel: 'Menu',
        rightLabel: 'Camera',
      ),
    );
  }
}
