import 'package:flutter/material.dart';
import 'package:second_app/widgets/btnChecked.dart';
import 'package:second_app/widgets/btnRadio.dart';
import 'package:second_app/widgets/btnSlide.dart';
import 'package:second_app/widgets/btnSwitch.dart';
import 'package:second_app/widgets/inputText.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: soir(),
      debugShowCheckedModeBanner: false,
    );
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
  bool goBack = false;

  void handleGoback() {
    setState(() {
      goBack = !goBack;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info),
        backgroundColor: Colors.teal,
        centerTitle: true,
        // leading: const Icon(Icons.search),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: handleGoback,
          )
        ],
      ),
      drawer: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            child: Text("Menu"),
            decoration: BoxDecoration(color: Color.fromARGB(103, 70, 68, 68)),
          ),
          ListTile(
            title: const Text("Home", style: TextStyle(color: Colors.teal)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text("About"),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
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
        child: (true) ? InputText() : BtnSwitch(),
      ),
    );
  }
}
