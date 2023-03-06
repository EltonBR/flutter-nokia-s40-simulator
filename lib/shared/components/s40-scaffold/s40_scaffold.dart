import 'package:flutter/material.dart';

class S40Scaffold extends StatelessWidget {
  final Widget header;
  final Widget body;
  final Widget footer;

  S40Scaffold(
      {super.key,
      required this.header,
      required this.body,
      required this.footer});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
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
                child: Column(
                  children: [
                    Stack(
                      fit: StackFit.passthrough,
                      children: [
                        Positioned(top: 0, left: 0, child: header),
                        Container(
                          width: 240,
                          height: 320,
                          child: body,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          child: footer,
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
