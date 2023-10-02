import 'package:flutter/material.dart';

class StackComponent extends StatefulWidget {
  const StackComponent({super.key});

  @override
  State<StackComponent> createState() => _StackComponentState();
}

class _StackComponentState extends State<StackComponent> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              flex: 1,
              child: Container(color: Colors.black),
            ),
            Expanded(
              flex: 3,
              child: Container(color: Colors.yellow),
            ),
          ],
        ),
        Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Container(
              height: 400,
              width: 300,
              color: Colors.green,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      color: Colors.black,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 100,
                          width: 100,
                          color: Colors.orange,
                        ),
                        Container(
                          height: 100,
                          width: 100,
                          color: Colors.blue,
                        )
                      ],
                    )
                  ]),
            ))
      ],
    );
  }
}
