import 'package:flutter_app/pages/gaode_map/search/fetch_data/bound_poi_search.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/fetch_data/geocode.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/fetch_data/id_poi_search.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/fetch_data/keyword_poi_search.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/fetch_data/polygon_poi_search.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/fetch_data/regeocode.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/fetch_data/route_poi_search.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/fetch_data/search_bus_station.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/route_plan/driving_route_plan.screen.dart';
import 'package:flutter_app/pages/gaode_map/search/tools/distance_search_screen.dart';
import 'package:flutter_app/pages/gaode_map/widgets/dimens.dart';
import 'package:flutter_app/pages/gaode_map/widgets/function_group.widget.dart';
import 'package:flutter_app/pages/gaode_map/widgets/function_item.widget.dart';
import 'package:flutter/material.dart';

class SearchDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FunctionGroup(
          headLabel: '出行路线规划',
          children: <Widget>[
            FunctionItem(
              label: '驾车出行路线规划',
              sublabel: 'DrivingRoutPlanScreen',
              target: DrivingRoutPlanScreen(),
              isLast: true,
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: '获取地图数据',
          children: <Widget>[
            FunctionItem(
              label: '关键字检索POI',
              sublabel: 'KeywordPoiSearchScreen',
              target: KeywordPoiSearchScreen(),
            ),
            FunctionItem(
              label: '周边检索POI',
              sublabel: 'BoundPoiSearchScreen',
              target: BoundPoiSearchScreen(),
            ),
            FunctionItem(
              label: '多边形内检索的POI',
              sublabel: 'PolygonPoiSearchScreen',
              target: PolygonPoiSearchScreen(),
            ),
            FunctionItem(
              label: 'ID检索POI',
              sublabel: 'IdPoiSearchScreen',
              target: IdPoiSearchScreen(),
            ),
            FunctionItem(
              label: '道路沿途检索POI',
              sublabel: 'RoutePoiSearchScreen',
              target: RoutePoiSearchScreen(),
            ),
            FunctionItem(
              label: '地理编码（地址转坐标）',
              sublabel: 'GeocodeScreen',
              target: GeocodeScreen(),
            ),
            FunctionItem(
              label: '获取公交数据',
              sublabel: 'SearchBusStationScreen',
              target: SearchBusStationScreen(),
            ),
            FunctionItem(
              label: '逆地理编码（坐标转地址）',
              sublabel: 'ReGeocodeScreen',
              target: ReGeocodeScreen(),
              isLast: true,
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: "工具",
          children: <Widget>[
            FunctionItem(
              label: '测量距离',
              sublabel: 'DistanceSearch',
              target: DistanceSearchScreen(),
            ),
          ],
        ),
      ],
    );
  }
}
