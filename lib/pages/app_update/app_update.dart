import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_app/utils/utils_export.dart';

/* *
 * App版本更新
 * AppUpdate
 */
class AppUpdate extends StatefulWidget {
  @override
  _AppUpdateState createState() => _AppUpdateState();
}

class _AppUpdateState extends State<AppUpdate> {
  var _serviceVersionCode,
      _serviceVersionName,
      _serviceVersionPlatform,
      _serviceVersionApp;

  @override
  void initState() {
    super.initState();
    //每次打开APP获取当前时间戳
    var timeEnd = DateTime.now().millisecondsSinceEpoch;
    //获取"Later"保存的时间戳
    _incrementCounter(timeEnd);
  }

  _incrementCounter(timeEnd) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var getIns = prefs.getInt("timeStart");
    if (getIns == null) {
      //第一次打开APP时执行"版本更新"的网络请求
      _getNewVersionAPP();
    } else if (getIns != 0 && timeEnd - getIns >= 24 * 60 * 60 * 1000) {
      //如果新旧时间戳的差大于或等于一天，执行网络请求
      _getNewVersionAPP();
    }
  }

  //执行版本更新的网络请求
  _getNewVersionAPP() async {
    setState(() {
      _serviceVersionCode = '1.0.0'; //版本号
      _serviceVersionName = '1.0.0'; //版本名称
      _serviceVersionPlatform = 'android'; //版本平台
      _serviceVersionApp =
          'http://rundle.lanchain.com/melenet_coffee/rundle_coffee_android.apk	'; //下载的URL
      _checkVersionCode();
    });
  }

  // 检查版本更新的版本号
  _checkVersionCode() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String _currentVersionCode = packageInfo.version;
    if (_serviceVersionCode.compareTo(_currentVersionCode) == 1) {
      _showNewVersionAppDialog(); //弹出对话框
    } else {
      toastCenter('暂无新版本');
    }
  }

  Future<void> _showNewVersionAppDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: <Widget>[
              Image.asset("images/ic_launcher_icon.png",
                  height: 35.0, width: 35.0),
              Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                child: Text("flutter_app"),
              ),
            ],
          ),
          content: Text('检测到新版本'),
          actions: <Widget>[
            FlatButton(
              child: Text('以后升级'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('立马升级'),
              onPressed: () {
                launch(_serviceVersionApp);
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App检测更新'),
      ),
      body: RaisedButton(
        child: Text('检测更新'),
        onPressed: () {
          _checkVersionCode();
          print('检测更新');
        },
      ),
    );
  }
}

// class DataUtil {
//   static saveCurrentTimeMillis(int timeStart) async {
//     await SpUtil.getInstance();
//     SpUtil.putInt(
//         Constant.timeStart, timeStart); //SpUtil 添加插件flustars: 0.2.6+1 导包
//   }
// }

class Strings {
  static String new_version_title = "项目名称";
  static String new_version_dialog_content = "提示的内容";
  static String new_version_button_later = "稍后再说";
  static String new_version_button_download = "下载";
}
