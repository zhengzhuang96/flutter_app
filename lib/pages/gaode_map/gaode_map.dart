import 'package:flutter_app/pages/gaode_map/composite/composite.screen.dart';
import 'package:flutter_app/pages/gaode_map/location/location.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/map.screen.dart';
import 'package:flutter_app/pages/gaode_map/navi/navi_screen.dart';
import 'package:flutter_app/pages/gaode_map/search/search.screen.dart';
import 'package:flutter_app/pages/gaode_map/widgets/dimens.dart';
import 'package:flutter/material.dart';


class GaodeMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('高德地图'),
        // backgroundColor: Theme.of(context).primaryColor,
      ),
      // backgroundColor: Color(0xff747474),
      body: DefaultTabController(
        length: 5,
        child: Column(
          children: <Widget>[
            Flexible(
              child: TabBarView(children: [
                MapDemo(),
                SearchDemo(),
                LocationDemo(),
                NaviScreen(),
                CompositeScreen(),
              ]),
            ),
            SPACE_TINY,
            Container(
              // color: Colors.black,
              height: 48,
              child: TabBar(
                tabs: [
                  Text('地图', style: TextStyle(color: Colors.black)),
                  Text('搜索', style: TextStyle(color: Colors.black)),
                  Text('定位', style: TextStyle(color: Colors.black)),
                  Text('导航', style: TextStyle(color: Colors.black)),
                  Text('综合', style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
