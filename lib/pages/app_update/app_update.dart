import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

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
    // DioUtil.getInstance().get(context, url).then((response) {
    //   if (response != null) {
    //     setState(() {
    //       var data = response.data;
    //       _serviceVersionCode = data["versionCode"].toString(); //版本号
    //       _serviceVersionName = data["versionName"].toString(); //版本名称
    //       _serviceVersionPlatform = data["versionPlatform"].toString();//版本平台
    //       _serviceVersionApp = data["versionApp"].toString();//下载的url
    //       _checkVersionCode();
    //     });
    //   }
    // });
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
    // int serviceVersionCode = int.parse(_serviceVersionCode); //String -> int
    int currentVersionCode = int.parse(_currentVersionCode); //String -> int
    print('packageInfo');
    // print(_serviceVersionCode);
    // print(currentVersionCode);
    // if (serviceVersionCode > currentVersionCode) {
    //   _showNewVersionAppDialog(); //弹出对话框
    // }
  }

  Future<void> _showNewVersionAppDialog() async {
    if (_serviceVersionPlatform == "android") {
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
                    child: Text("项目名称"),
                  ),
                ],
              ),
              content: Text('版本更新'),
              actions: <Widget>[
                FlatButton(
                  child: Text('Later'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                FlatButton(
                  child: Text('DownLoad'),
                  onPressed: () {
                    //https://play.google.com/store/apps/details?id=项目包名
                    launch(_serviceVersionApp); //到Google Play 官网下载
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    } else {
      //iOS
      return showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return CupertinoAlertDialog(
              title: Row(
                children: <Widget>[
                  Image.asset("images/ic_launcher_icon.png",
                      height: 35.0, width: 35.0),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 10.0, 0.0),
                      child: Text(Strings.new_version_title))
                ],
              ),
              content: Text("新版本 v$_serviceVersionName is available. " +
                  Strings.new_version_dialog_content),
              actions: <Widget>[
                CupertinoDialogAction(
                  child: Text(Strings.new_version_button_later),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                CupertinoDialogAction(
                  child: Text(Strings.new_version_button_download),
                  onPressed: () {
                    //_serviceVersionApp="http://itunes.apple.com/cn/lookup?id=项目包名"
                    launch(_serviceVersionApp); //到APP store 官网下载
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }
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
