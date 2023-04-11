import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 100,
          height: 100,
          color: Colors.amberAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
        ),
        Container(
          width: 200,
          height: 100,
          color: Colors.redAccent,
        )
      ],
    );
  }
}
