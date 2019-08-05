import 'package:amap_base/amap_base.dart';
import 'package:flutter_app/pages/gaode_map/utils/misc.dart';
import 'package:flutter_app/pages/gaode_map/widgets/button.widget.dart';
import 'package:flutter_app/pages/gaode_map/widgets/dimens.dart';
import 'package:flutter/material.dart';

/* *
 * 定位
 */
class LocationDemo extends StatefulWidget {
  @override
  _LocationDemoState createState() => _LocationDemoState();
}

class _LocationDemoState extends State<LocationDemo>
    with AutomaticKeepAliveClientMixin {
  final _amapLocation = AMapLocation();

  List<Location> _result = [];

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    _amapLocation.init();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: ListView(
              children:
                  _result.map((location) => _ResultItem(location)).toList(),
            ),
          ),
          SPACE_NORMAL,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Button(
                label: '单次定位',
                onPressed: (context) async {
                  final options = LocationClientOptions(
                    isOnceLocation: true,
                    locatingWithReGeocode: true,
                  );

                  if (await Permissions().requestPermission()) {
                    _amapLocation
                        .getLocation(options)
                        .then(_result.add)
                        .then((_) => setState(() {}));
                  } else {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('权限不足')));
                  }
                },
              ),
              Button(
                label: '连续定位',
                onPressed: (context) async {
                  final options = LocationClientOptions(
                    isOnceLocation: false,
                    locatingWithReGeocode: true,
                  );

                  if (await Permissions().requestPermission()) {
                    _amapLocation
                        .startLocate(options)
                        .map(_result.add)
                        .listen((_) => setState(() {}));
                  } else {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text('权限不足')));
                  }
                },
              ),
              Button(
                label: '停止定位',
                onPressed: (context) {
                  _amapLocation.stopLocate();
                },
              ),
            ],
          ),
          SPACE_NORMAL,
        ],
      ),
    );
  }

  @override
  void dispose() {
    _amapLocation.stopLocate();
    super.dispose();
  }
}

class _ResultItem extends StatelessWidget {
  final Location _data;

  const _ResultItem(this._data, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kSpaceBig),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            DateTime.now().toIso8601String(),
            style: TextStyle(color: Colors.grey),
          ),
          SPACE_SMALL,
          Text(
            jsonFormat(_data.toJson()),
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
