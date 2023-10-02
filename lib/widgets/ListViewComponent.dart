import 'package:flutter/material.dart';

class ListViewComponent extends StatefulWidget {
  const ListViewComponent({super.key});

  @override
  State<ListViewComponent> createState() => _ListViewComponentState();
}

class _ListViewComponentState extends State<ListViewComponent> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.flight_takeoff),
          title: Text("Flight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Flight to Paris"),
          onTap: () => print("Flight to Paris"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land),
          title: Text("landing",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Flight to Paris"),
          onTap: () => print("Flight to Paris"),
        ),
        ListTile(
          leading: Icon(Icons.flight_takeoff),
          title: Text("Flight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Flight to Paris"),
          onTap: () => print("Flight to Paris"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land),
          title: Text("landing",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Flight to Paris"),
          onTap: () => print("Flight to Paris"),
        ),
        ListTile(
          leading: Icon(Icons.flight_takeoff),
          title: Text("Flight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Flight to Paris"),
          onTap: () => print("Flight to Paris"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land),
          title: Text("landing",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Flight to Paris"),
          onTap: () => print("Flight to Paris"),
        ),
        ListTile(
          leading: Icon(Icons.flight_takeoff),
          title: Text("Flight",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Flight to Paris"),
          onTap: () => print("Flight to Paris"),
        ),
        ListTile(
          leading: Icon(Icons.flight_land),
          title: Text("landing",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text("Flight to Paris"),
          onTap: () => print("Flight to Paris"),
        ),
      ],
    );
  }
}
