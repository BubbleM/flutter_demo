import 'package:flutter/material.dart';

class ImageChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      /**
       * 加载网络图片
       */
      // child: Container(
      //   child: Image.network(
      //     'https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg',
      //     // alignment: Alignment.topCenter,
      //     // color: Colors.blue,
      //     // colorBlendMode: BlendMode.screen,
      //     fit: BoxFit.cover,
      //     repeat: ImageRepeat.repeatY,
      //   ),
      //   height: 300.0,
      //   width: 300.0,
      //   decoration: BoxDecoration(
      //     color: Colors.yellow,
      //     border: Border.all(
      //         color: Colors.blue,
      //         width: 2.0
      //     ),
      //   ),
      // ),

      /**
       * 利用Container特性实现圆形图片
       */
      // child: Container(
      //   // 实现圆角、圆形图片
      //   height: 300.0,
      //   width: 300.0,
      //   decoration: BoxDecoration(
      //       color: Colors.yellow,
      //       border: Border.all(
      //           color: Colors.blue,
      //           width: 2.0
      //       ),
      //       // borderRadius: BorderRadius.all(Radius.circular(150.0)), //圆形
      //       borderRadius: BorderRadius.circular(150),
      //       image: DecorationImage(
      //           image: NetworkImage('https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg'),
      //           fit: BoxFit.cover
      //       )
      //   ),
      // ),

      /**
       * 使用 ClipOval 组件实现圆形图片
       */
      child: Container(
        child: ClipOval(
          child: Image.network(
              'https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg',
              width: 300,
              height: 300,
              fit: BoxFit.cover
          )
        ),
      ),

      /**
       * 使用本地图片
       */

    );
  }
}