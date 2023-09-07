import 'package:flutter/material.dart';

class BtnRadio extends StatefulWidget {
  const BtnRadio({super.key});

  @override
  State<BtnRadio> createState() => _BtnRadioState();
}

class _BtnRadioState extends State<BtnRadio> {
  int val1 = 0;
  int val2 = 0;

  void change1(int? t) {
    setState(() {
      val1 = t!;
    });
  }

  void change2(int? s) {
    setState(() {
      val2 = s!;
    });
  }

  Widget radio() {
    List<Widget> buttonRadio = List.empty(growable: true);

    for (int i = 0; i < 4; i++) {
      buttonRadio.add(Radio(value: i, groupValue: val1, onChanged: change1));
    }
    Column column = Column(children: buttonRadio);

    return column;
  }

  Widget radioList() {
    List<Widget> buttonRadio = List.empty(growable: true);

    for (int i = 0; i < 4; i++) {
      buttonRadio.add(RadioListTile(
        value: i,
        groupValue: val2,
        onChanged: change2,
        activeColor: Colors.red,
        controlAffinity: ListTileControlAffinity.platform,
        title: Text('choose $i'),
      ));
    }
    Column column = Column(children: buttonRadio);

    return column;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Bienvenue chez fanetech',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        radio(),
        radioList()
      ],
    );
  }
}
