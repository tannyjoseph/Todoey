import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Add Task',
                  style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: new UnderlineInputBorder(
                        borderSide: new BorderSide(
                  color: Colors.lightBlueAccent,

                ))),
                autofocus: true,
              ),
              SizedBox(
                height: 20.0,
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                onPressed: () {},
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),

                color: Colors.lightBlueAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
