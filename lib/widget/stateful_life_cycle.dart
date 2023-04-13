import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  int _number = 1;

  void _onTap() {
    setState(() {
      _number += 1;
    });
  }

  @override
  void initState() {
    print('# INIT STATE $_number');
    super.initState();
  }

  @override
  void dispose() {
    print('#DISPOSE');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('# REBUILD $_number');
    return Center(
      child: GestureDetector(
        onTap: _onTap,
        child: Container(
          color: Colors.amberAccent,
          width: 40,
          height: 40,
          child: Center(
            child: Text(_number.toString()),
          ),
        ),
      ),
    );
  }
}
