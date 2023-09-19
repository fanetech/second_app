import 'package:flutter/material.dart';
import 'package:second_app/widgets/appBarBtn.dart';
import 'package:second_app/widgets/btnChecked.dart';
import 'package:second_app/widgets/btnRadio.dart';
import 'package:second_app/widgets/btnSlide.dart';
import 'package:second_app/widgets/btnSnackBar.dart';
import 'package:second_app/widgets/btnSwitch.dart';
import 'package:second_app/widgets/datePicker.dart';
import 'package:second_app/widgets/inputText.dart';
import 'package:second_app/widgets/sheetBtn.dart';

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
  String value2 = '';
  var info = 'Bienvenue';
  bool goBack = false;
  final GlobalKey<ScaffoldState> _sb = GlobalKey<ScaffoldState>();

  void handleGoback() {
    setState(() {
      goBack = !goBack;
    });
  }

  void persistantBtnAction(String a) => setState(() => value2 = a);

  // void _snackbar() {
  //   _sb.currentState.showSnackBar( scnackBar)
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _sb,
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
      persistentFooterButtons: [
        IconButton(
            onPressed: () => persistantBtnAction("add"),
            icon: const Icon(Icons.add)),
        IconButton(
            onPressed: () => persistantBtnAction("delete"),
            icon: const Icon(Icons.delete)),
      ],
      body: Column(
        children: [
          const Center(
            child: (true) ? InputText() : BtnSwitch(),
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          Text('$value2'),
          const SheetBtn(),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const BtnSnackBar(),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const DatePicker(),
        ],
      ),
      bottomNavigationBar: const AppBarBtn(),
    );
  }
}
