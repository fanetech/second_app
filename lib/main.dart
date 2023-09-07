import 'package:flutter/material.dart';
import 'package:second_app/widgets/btnChecked.dart';
import 'package:second_app/widgets/btnRadio.dart';

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
        body: const Center(
          child: BtnChecked(),
        ));
  }
}
