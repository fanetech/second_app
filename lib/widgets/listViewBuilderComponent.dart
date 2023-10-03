import 'package:flutter/material.dart';

class ListViewBuilderComponent extends StatefulWidget {
  const ListViewBuilderComponent({super.key});

  @override
  State<ListViewBuilderComponent> createState() =>
      _ListViewBuilderComponentState();
}

class _ListViewBuilderComponentState extends State<ListViewBuilderComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: getListView(),
    );
  }
}

List<String> getListElement() {
  var items = List<String>.generate(25, (index) => 'Item $index');
  return items;
}

Widget getListView() {
  var listItems = getListElement();
  var listView = ListView.builder(
    itemCount: listItems.length,
    itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          debugPrint('${listItems[index]} was tapped');
        },
      );
    },
  );
  return listView;
}
