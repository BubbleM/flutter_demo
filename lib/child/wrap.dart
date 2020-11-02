import 'package:flutter/material.dart';

class WrapChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 600,
      color: Colors.pink,
      padding: EdgeInsets.all(10),
      child: Wrap(
        spacing: 10,
        runSpacing: 40,
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          MyButton('按钮'),
          MyButton('按钮'),
          MyButton('按钮'),
          MyButton('按钮'),
          MyButton('按钮')
        ],
      ),
    );throw UnimplementedError();
  }
}

class MyButton extends StatelessWidget{

  final String text;

  const MyButton(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(this.text),
      textColor: Theme.of(context).accentColor,
      onPressed: (){

      },
    );
  }

}