import 'package:flutter/material.dart';

class BtnChecked extends StatefulWidget {
  const BtnChecked({super.key});

  @override
  State<BtnChecked> createState() => _BtnCheckedState();
}

class _BtnCheckedState extends State<BtnChecked> {
  bool val = false;
  bool val2 = false;
  bool val3 = false;

  void change(bool? t) {
    setState(() {
      val = t!;
    });
  }

  void change2(bool? s) {
    setState(() {
      val2 = s!;
    });
  }

  void change3(bool? s) {
    setState(() {
      val3 = s!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Radio',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        Checkbox(value: val, onChanged: change, activeColor: Colors.red),
        CheckboxListTile(
          value: val2,
          onChanged: change2,
          title: const Text('Canada city'),
          subtitle: const Text('Ontario'),
          secondary: const Icon(Icons.home),
          activeColor: Colors.red,
          controlAffinity: ListTileControlAffinity.platform,
        ),
        CheckboxListTile(
          value: val3,
          onChanged: change3,
          title: const Text('USA city'),
          subtitle: const Text('New York'),
          secondary: const Icon(Icons.circle_notifications),
          activeColor: Colors.red,
          controlAffinity: ListTileControlAffinity.leading,
        )
      ],
    );
  }
}
