import 'package:amap_base/amap_base.dart';
import 'package:flutter_app/pages/gaode_map/utils/misc.dart';
import 'package:flutter_app/pages/gaode_map/utils/view.dart';
import 'package:flutter_app/pages/gaode_map/widgets/button.widget.dart';
import 'package:flutter_app/pages/gaode_map/widgets/dimens.dart';
import 'package:flutter/material.dart';

class ReGeocodeScreen extends StatefulWidget {
  ReGeocodeScreen();

  factory ReGeocodeScreen.forDesignTime() => ReGeocodeScreen();

  @override
  _ReGeocodeScreenState createState() => _ReGeocodeScreenState();
}

class _ReGeocodeScreenState extends State<ReGeocodeScreen> {
  String _result = '';

  TextEditingController _nameController = TextEditingController(text: '方恒国际中心');
  TextEditingController _cityController = TextEditingController(text: '北京');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('逆地理编码（坐标转地址）'),
        centerTitle: true,
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Form(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '输入目标经纬度',
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(color: Colors.black),
                  controller: _nameController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return '输入目标经纬度';
                    }
                  },
                ),
                SPACE_NORMAL,
                TextFormField(
                  decoration: InputDecoration(
                    hintText: '输入搜索范围',
                    border: OutlineInputBorder(),
                  ),
                  controller: _cityController,
                  style: TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value.isEmpty) {
                      return '输入搜索范围';
                    }
                  },
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
                      AMapSearch().searchReGeocode(
                        LatLng(39.9824, 116.3053),
                        100,
                        0,
                      ),
                    ).then((result) {
                      setState(() {
                        _result = result.toString();
                      });
                    }).catchError((e) => showError(context, e.toString()));
                  },
                ),
                SPACE_NORMAL,
                Text(_result, style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _cityController.dispose();
    super.dispose();
  }
}
