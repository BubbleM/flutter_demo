import 'package:flutter/material.dart';

class StateChild extends StatefulWidget{
  StateChild(): super();
  _StateChildState createState() =>_StateChildState();
}

class _StateChildState extends State<StateChild>{

  int countNum = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Chip(
          label: Text('${this.countNum}'),
        ),
        SizedBox(height: 20),
        RaisedButton(
          child: Text('按钮'),
          onPressed: (){
            setState(() {
              this.countNum++;
            });
          },
        )
      ],
    );
  }
}