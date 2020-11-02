import 'package:flutter/material.dart';

class AspectRatioChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
      width: 300,
      child: AspectRatio(
        aspectRatio: 2.0/1.0,
        child: Container(
          color: Colors.red, //宽度为150
        ),
      ),
   );
  }

}