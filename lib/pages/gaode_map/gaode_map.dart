import 'package:flutter/material.dart';
import 'package:amap_base/amap_base.dart';

/* *
 * 高德地图
 */
class GaodeMap extends StatefulWidget {
  @override
  _GaodeMapState createState() => _GaodeMapState();
}

class _GaodeMapState extends State<GaodeMap> {

  AMapController _controller;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('高德地图'),
      ),
      body: Container(
        child: AMapView(
          onAMapViewCreated: (controller) {
            _controller = controller;
          },
          amapOptions: AMapOptions(
            compassEnabled: false,    // 是否进行压缩，false比较好
            zoomControlsEnabled: true,  // 是否开启放大缩小按钮
            logoPosition: LOGO_POSITION_BOTTOM_CENTER,  // 高德地图LOGO位置
            camera: CameraPosition(
              target: LatLng(41.851827, 112.801637),  // 默认地图显示位置
              zoom: 4,  // 默认显示放大倍数
            ),
          ),
        ),
      ),
    );
  }

}
