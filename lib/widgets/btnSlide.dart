import 'package:flutter/material.dart';

class BtnSlide extends StatefulWidget {
  const BtnSlide({super.key});

  @override
  State<BtnSlide> createState() => _BtnSlideState();
}

class _BtnSlideState extends State<BtnSlide> {
  double val = 0.0;
  void change(double? t) {
    setState(() {
      val = t!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Slide btn ${(val * 100).round()}',
            style: TextStyle(fontSize: 30, color: Colors.green)),
        Slider(value: val, onChanged: change)
      ],
    );
  }
}
