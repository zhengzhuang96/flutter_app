import 'package:flutter/material.dart';
import 'package:flutter_app/utils/wechat.dart';
import 'package:fluwx/fluwx.dart' as fluwx;
import 'dart:convert';

/* *
 * 微信相关
 */

class WechatFluwx extends StatefulWidget {
  @override
  _WechatFluwxState createState() => _WechatFluwxState();
}

class _WechatFluwxState extends State<WechatFluwx> {

  String _resultAuth = "无";    // 登录
  String _resultPay = "无";     // 支付

  @override
  void initState() {
    super.initState();
    // 等待分享结果
    fluwx.responseFromShare.listen((response) {
      print(response);
    });


    // 等待登录返回code
    fluwx.responseFromAuth.listen((response) {
      setState(() {
        _resultAuth = "${response.code}";
      });
    });

    // 等待支付结果
    fluwx.responseFromPayment.listen((response){
      //do something
      setState(() {
        _resultPay = "${response.errCode}";
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _resultAuth = null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('微信相关'),
      ),
      body: ListView(
        children: <Widget>[
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: new Text('分享百度网页'),
            onPressed: () {
              print('分享百度网页');
              Wechat.weChatShareWeb(
                  'http://www.baidu.com',
                  '测试分享百度',
                  'https://b-gold-cdn.xitu.io/v3/static/img/frontend.1dae74a.png',
                  fluwx.WeChatScene.SESSION);
            },
          ),
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: new Text('微信文本分享'),
            onPressed: () {
              print('微信文本分享');
              Wechat.weChatShareText('微信文本分享');
            },
          ),
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('视频分享'),
            onPressed: () {
              print('微信文本分享');
              Wechat.weChatShareVideo(
                  'http://www.baidu.com',
                  '测试视频分享',
                  'https://b-gold-cdn.xitu.io/v3/static/img/frontend.1dae74a.png',
                  'http://tb-video.bdstatic.com/tieba-smallvideo-transcode-cae/1034440_e277d54829a1d750f2f1a6b8f17113b0_069d4715de99_3_cae.mp4',
                  fluwx.WeChatScene.SESSION,
                  '测试视频分享');
            },
          ),
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('微信登录'),
            onPressed: () {
              print('微信登录');
              Wechat.weChatLogin();
            },
          ),
          const Text("响应结果;"),
          Text('微信code值' + _resultAuth),
          MaterialButton(
            color: Colors.blue,
            textColor: Colors.white,
            child: Text('微信支付'),
            onPressed: () {
              print('微信支付');
              Wechat.weChatPay();
            },
          ),
        ],
      ),
    );
  }
}
