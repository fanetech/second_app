import 'package:flutter/material.dart';

class SheetBtn extends StatefulWidget {
  const SheetBtn({super.key});

  @override
  State<SheetBtn> createState() => _SheetBtnState();
}

class _SheetBtnState extends State<SheetBtn> {
  void button_sheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Annuler',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Valider',
                    style: TextStyle(color: Colors.green, fontSize: 20),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: button_sheet,
      child: const Text('Bottom Sheet'),
    );
  }
}
