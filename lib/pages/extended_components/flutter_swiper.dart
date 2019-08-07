import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

/* *
 * flutter_swiper
 */
class FlutterSwiper extends StatefulWidget {
  @override
  _FlutterSwiperState createState() => _FlutterSwiperState();
}

class _FlutterSwiperState extends State<FlutterSwiper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutterSwiper'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Text('第一种'),
            _firstLayout(),
            Text('第二种'),
            _swiperLayoutTinder(),
            Text('第三种'),
            _swiperLayoutCustom(),
          ],
        ),
      ),
    );
  }

  // 第一种
  Widget _firstLayout() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setWidth(333),
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/288x188",
            fit: BoxFit.fill,
          );
        },
        pagination: new SwiperPagination(),
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
      ),
    );
  }

  // 第二种
  Widget _swiperLayoutTinder() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setWidth(333),
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            "http://via.placeholder.com/288x188",
            fit: BoxFit.fill,
          );
        },
        pagination: new SwiperPagination(),
        itemCount: 10,
        itemWidth: 300.0,
        itemHeight: 400.0,
        layout: SwiperLayout.TINDER,
      ),
    );
  }

  // 第三种
  Widget _swiperLayoutCustom() {
    return Container(
      width: ScreenUtil().setWidth(750),
      height: ScreenUtil().setWidth(333),
      child: new Swiper(
          layout: SwiperLayout.CUSTOM,
          customLayoutOption:
              new CustomLayoutOption(startIndex: -1, stateCount: 3)
                  .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
            new Offset(-370.0, -40.0),
            new Offset(0.0, 0.0),
            new Offset(370.0, -40.0)
          ]),
          itemWidth: 300.0,
          itemHeight: 200.0,
          pagination: new SwiperPagination(),
          itemBuilder: (context, index) {
            return new Container(
              color: Colors.grey,
              child: new Center(
                child: new Text("$index"),
              ),
            );
          },
          itemCount: 10),
    );
  }
}
