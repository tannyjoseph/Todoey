import 'package:flutter/material.dart';
import 'tasks_tile.dart';

class todo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
