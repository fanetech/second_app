import 'package:flutter/material.dart';

class BtnSwitch extends StatefulWidget {
  const BtnSwitch({super.key});

  @override
  State<BtnSwitch> createState() => _BtnSwitchState();
}

class _BtnSwitchState extends State<BtnSwitch> {
  bool val1 = false;
  bool val2 = false;

  void change1(bool? t) {
    setState(() {
      val1 = t!;
    });
  }

  void change2(bool? s) {
    setState(() {
      val2 = s!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Switch',
          style: TextStyle(fontSize: 30, color: Colors.green),
        ),
        Switch(value: val1, onChanged: change1, activeColor: Colors.red),
        SwitchListTile(
          value: val2,
          onChanged: change2,
          title: const Text('Veuillez interopérer le switch',
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                  fontWeight: FontWeight.normal)),
          subtitle: const Text('Switch'),
          secondary: const Icon(Icons.home),
          activeColor: Colors.red,
          controlAffinity: ListTileControlAffinity.platform,
        )
      ],
    );
  }
}
