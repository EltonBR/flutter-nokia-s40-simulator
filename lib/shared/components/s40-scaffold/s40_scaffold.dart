import 'package:flutter/material.dart';

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
              constraints: const BoxConstraints(
                minHeight: 320,
                maxHeight: 320,
                minWidth: 240,
                maxWidth: 240,
              ),
              child: Container(
              color: Colors.white,
                width: 240,
                height: 320,
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
