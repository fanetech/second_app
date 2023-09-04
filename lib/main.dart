import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        ),
        home: const soir());
  }
}

class soir extends StatefulWidget {
  const soir({super.key});

  @override
  State<soir> createState() => _soirState();
}

class _soirState extends State<soir> {
  String value = '';
  var info = 'Bienvenue';
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
    return Scaffold(
        appBar: AppBar(title: Text(info)),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print("floating btn pressed");
          },
          backgroundColor: Colors.teal,
          label: const Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
          icon: const Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Bienvenue chez fanetech',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            radio(),
            radioList()
          ],
        ));
  }
}
