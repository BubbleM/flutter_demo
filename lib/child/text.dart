import 'package:flutter/material.dart';

class TextChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        child: Text(
          'hello world',
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textScaleFactor: 2, //字体缩放
          // textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic
            // color: Color.fromRGBO(244, 233, 2143, 0.5)
          ),
        ),
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(
              color: Colors.blue,
              width: 2.0
          ),
          // borderRadius: BorderRadius.all(Radius.circular(150.0)) //圆形
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        // padding: EdgeInsets.fromLTRB(10, 30, 5, 0),
        // margin: EdgeInsets.fromLTRB(10, 30, 5, 10)
        // transform: Matrix4.translationValues(100, 0, 0),
        // transform: Matrix4.rotationZ(-0.3),
        alignment: Alignment.topCenter,
      ),
    );
  }
}