import 'package:flutter/material.dart';

class AppBarBtn extends StatefulWidget {
  const AppBarBtn({super.key});

  @override
  State<AppBarBtn> createState() => _AppBarBtnState();
}

class _AppBarBtnState extends State<AppBarBtn> {
  final List<BottomNavigationBarItem> _item = List.empty(growable: true);
  int _id = 0;
  String _value = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // _item = new List.empty(growable: true);
    _item.add(
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
    );
    _item.add(
      const BottomNavigationBarItem(
        icon: Icon(Icons.add),
        label: 'Add',
      ),
    );
    _item.add(
      const BottomNavigationBarItem(
        icon: Icon(Icons.shop_2_outlined),
        label: 'Shop',
      ),
    );
  }

  Future<void> info() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                SimpleDialogOption(
                  child: Text("Oui"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
                // Text('This is a demo alert dialog.'),
                // Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _item,
      currentIndex: _id,
      onTap: (int id) {
        setState(() {
          _id = id;
          _value = 'Current value is $id';
          info();
        });
      },
    );
  }
}
