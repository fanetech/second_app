import 'package:flutter/material.dart';

class GridViewComponant extends StatefulWidget {
  const GridViewComponant({super.key});

  @override
  State<GridViewComponant> createState() => _GridViewComponantState();
}

class _GridViewComponantState extends State<GridViewComponant> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      return GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5.0,
        children: List.generate(10, (index) {
          return Image.asset('images/1.png}');
        }),
      );
    });
  }
}
