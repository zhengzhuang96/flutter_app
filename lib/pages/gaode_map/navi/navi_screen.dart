import 'package:amap_base/amap_base.dart';
import 'package:flutter/material.dart';

/* *
 * 高德地图导航
 */
class NaviScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('开始导航'),
        onPressed: () {
          AMapNavi().startNavi(
            lat: 36.077645,
            lon: 120.401656,
            naviType: AMapNavi.drive,   // 出行方式
          );
        },
      ),
    );
  }
}
