/* *
 * charts_flutter
 * https://google.github.io/charts/flutter/gallery.html
 */
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_app/pages/charts_flutter/gallery/simple.dart';

class ChartsFlutter extends StatelessWidget {

  List<Map> seriesList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chatts'),
      ),
      body: ListView(
        children: <Widget>[
          Text('暂未找出解决方案'),
          // SimpleBarChart(seriesList: seriesList),
        ],
      ),
    );
  }
}