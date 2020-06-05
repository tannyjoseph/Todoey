import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkBoxCallback(bool newValue) {
    setState(() {
      isChecked = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Feed the cat',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckBox(
        checkboxState: isChecked,
        toggle: checkBoxCallback,
      ),
    );
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkboxState;
  final Function toggle;

  TaskCheckBox({this.checkboxState, this.toggle});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggle,
    );
  }
}
