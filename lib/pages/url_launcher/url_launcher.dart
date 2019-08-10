import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

/* *
 * 拨打电话，发送短信，打开浏览器
 */
class UrlLauncher extends StatefulWidget {
  @override
  _UrlLauncherState createState() => _UrlLauncherState();
}

class _UrlLauncherState extends State<UrlLauncher> {
  String _phone = '';

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.cylog.org/headers/';
    return Scaffold(
      appBar: AppBar(
        title: Text('url_launcher'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (String text) => _phone = text,
                  decoration: const InputDecoration(hintText: '输入要拨打的电话号码'),
                ),
              ),
              RaisedButton(
                child: Text('拨打电话'),
                onPressed: () {
                  _makePhoneCall('tel:$_phone');
                },
              ),
              RaisedButton(
                child: Text('打开浏览器'),
                onPressed: () {
                  _launchInBrowser('http://www.baidu.com');
                },
              ),
              RaisedButton(
                child: Text('在应用程序中启动'),
                onPressed: () {
                  _launchInWebViewOrVC(toLaunch);
                },
              ),
              RaisedButton(
                onPressed: () => setState(() {
                  _launchInWebViewWithJavaScript(toLaunch);
                }),
                child: const Text('Launch in app(JavaScript ON)'),
              ),
            ],
          )
        ],
      ),
    );
  }

  // 拨打电话
  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw '无法拨打$url';
    }
  }

  // 打开浏览器
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw '无法打开 $url';
    }
  }

  // _launchInWebViewOrVC
  Future<void> _launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  
  Future<void> _launchInWebViewWithJavaScript(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        enableJavaScript: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
