import 'package:amap_base/amap_base.dart';
import 'package:flutter_app/pages/gaode_map/utils/misc.dart';
import 'package:flutter_app/pages/gaode_map/utils/view.dart';
import 'package:flutter_app/pages/gaode_map/widgets/button.widget.dart';
import 'package:flutter_app/pages/gaode_map/widgets/dimens.dart';
import 'package:flutter/material.dart';

class RoutePoiSearchScreen extends StatefulWidget {
  RoutePoiSearchScreen();

  factory RoutePoiSearchScreen.forDesignTime() => RoutePoiSearchScreen();

  @override
  _RoutePoiSearchScreenState createState() => _RoutePoiSearchScreenState();
}

class _RoutePoiSearchScreenState extends State<RoutePoiSearchScreen> {
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('道路沿途检索POI'),
        centerTitle: true,
      ),
      body: Form(
        child: ListView(
          padding: const EdgeInsets.all(8.0),
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Text(
              '出发点: LatLng(39.993291, 116.473188),\n终点: LatLng(39.940474, 116.355426)',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            SPACE_NORMAL,
            Button(
              label: '开始搜索',
              onPressed: (context) async {
                if (!Form.of(context).validate()) {
                  return;
                }

                loading(
                  context,
                  AMapSearch().searchRoutePoiLine(
                    RoutePoiSearchQuery.line(
                      from: LatLng(39.993291, 116.473188),
                      to: LatLng(39.940474, 116.355426),
                      searchType: 0,
                    ),
                  ),
                ).then((routePoiResult) {
                  setState(() {
                    _result = jsonFormat(routePoiResult.toJson());
                  });
                }).catchError((e) => showError(context, e.toString()));
              },
            ),
            SPACE_NORMAL,
            Text(_result, style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
