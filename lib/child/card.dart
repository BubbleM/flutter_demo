import 'package:flutter/material.dart';

class CardChild extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(title: Text('张三'), subtitle: Text('高级工程师')),
              ListTile(title: Text('电话：xxxxxx')),
              ListTile(title: Text('地址：山西山西陕西'))
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 15/9,
                child: Image.network('https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg', fit: BoxFit.cover),
              ),
              ListTile(
                  leading: ClipOval(
                child: Image.network('https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg', fit: BoxFit.cover, width: 60, height: 60),
              ),
                  title: Text('二手车'),
                  subtitle: Text('荣威 RX5 2016款 20T 两驱手动旗舰版')
              ),
              ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://pic2.58cdn.com.cn/p1/big/n_v26d53fadb15e74fbea1f1659c00c3727e.jpg'),
                  ),
                  title: Text('二手车'),
                  subtitle: Text('荣威 RX5 2016款 20T 两驱手动旗舰版')
              ),
            ],
          ),
        )
      ],
    );
  }

}