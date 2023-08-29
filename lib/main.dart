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
  var info = "Hello World";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    info = "Bienvenue";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(info)),
      body: ElevatedButton(
        child: const Text("Click Me"),
        onPressed: () {
          print("Hello World");
          setState(() {
            info = "Fanetech";
          });
        },
      ),
    );
  }
}
