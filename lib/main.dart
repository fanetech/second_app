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
  var text1 = "test1";
  var text2 = "test2";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    info = "Bienvenue";
  }

  void click1() {
    setState(() {
      text1 = "click text1";
    });
  }

  void click2(String t) {
    setState(() {
      text2 = t;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(info)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => click1(),
                child: const Text('btn1',
                    style: TextStyle(fontSize: 20, color: Colors.white))),
            Text(
              text1,
              style: const TextStyle(color: Colors.red),
            ),
            const Divider(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => click2("click text2"),
                child: const Text('btn2',
                    style: TextStyle(fontSize: 20, color: Colors.green))),
            Text(
              text2,
              style: const TextStyle(color: Colors.green),
            ),
          ],
        ));
  }
}
