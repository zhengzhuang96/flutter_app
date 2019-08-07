import 'package:flutter/material.dart';

/* *
 * charts_flutter 
 */
class ChartsFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChartsFlutter'),
      ),
      body: Text('charts_flutter'),
    );
  }
  
}

class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}
