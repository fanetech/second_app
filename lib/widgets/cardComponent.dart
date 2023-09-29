import 'package:flutter/material.dart';

class CardComponent extends StatefulWidget {
  const CardComponent({super.key});

  @override
  State<CardComponent> createState() => _CardComponentState();
}

class _CardComponentState extends State<CardComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Card(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.blue,
                size: 30,
              ),
              title: Text('John Doe',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text("IT Engineer"),
            ),
            ButtonTheme(
              child: ButtonBar(
                children: [
                  TextButton(onPressed: () {}, child: Text("VIDEO")),
                  TextButton(onPressed: () {}, child: Text("SMS")),
                ],
              ),
            )
          ],
        ),
      ),
      const Divider(
        height: 5,
        color: Colors.white,
      ),
      Card(
        child: Column(
          children: [
            const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.blue,
                size: 30,
              ),
              title: Text('John Doe',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text("IT Engineer"),
            ),
            ButtonTheme(
              child: ButtonBar(
                children: [
                  TextButton(onPressed: () {}, child: Text("VIDEO")),
                  TextButton(onPressed: () {}, child: Text("SMS")),
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
