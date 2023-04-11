import 'package:flutter/material.dart';

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 16, // hang
      runAlignment: WrapAlignment.spaceBetween,
      children: [
        Container(
          width: 200,
          height: 100,
          color: Colors.amberAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.amberAccent,
        ),
        Expanded(
          child: Container(
            width: 100,
            height: 100, // remove
            color: Colors.redAccent,
          ),
        )
      ],
    );
  }
}
