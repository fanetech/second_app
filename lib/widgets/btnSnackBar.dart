import 'package:flutter/material.dart';

class BtnSnackBar extends StatefulWidget {
  const BtnSnackBar({super.key});

  @override
  State<BtnSnackBar> createState() => _BtnSnackBarState();
}

class _BtnSnackBarState extends State<BtnSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                print("Undo");
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}
