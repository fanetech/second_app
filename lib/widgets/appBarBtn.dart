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

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _item,
      currentIndex: _id,
      onTap: (int id) {
        setState(() {
          _id = id;
          _value = 'Current value is $id';
        });
      },
    );
  }
}
