import 'package:flutter/material.dart';

/* *
 * CheckboxDemo
 */
class CheckboxDemo extends StatefulWidget {
  @override
  _CheckboxDemoState createState() => _CheckboxDemoState();
}

class _CheckboxDemoState extends State<CheckboxDemo> {
  bool _checkboxItemA = true;
  int _radioGroupA = 0;
  bool _switchItemA = false;
  double _sliderItemA = 0.0;

  void _handleRadioValueChanged(int value) {
    setState(() {
      _radioGroupA = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            // 复选框
            CheckboxListTile(
              value: _checkboxItemA,
              onChanged: (value) {
                setState(() {
                  _checkboxItemA = value;
                });
              },
              title: Text('Checkbox Item A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.bookmark),
              selected: _checkboxItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _checkboxItemA,
                  onChanged: (value) {
                    setState(() {
                      _checkboxItemA = value;
                    });
                  },
                  activeColor: Colors.black,
                ),
              ],
            ),
            // 单选按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
                Radio(
                  value: 1,
                  groupValue: _radioGroupA,
                  onChanged: _handleRadioValueChanged,
                  activeColor: Colors.black,
                ),
              ],
            ),
            Text('RadioGroupValue: $_radioGroupA'),
            SizedBox(
              height: 32.0,
            ),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('Option A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA,
              onChanged: _handleRadioValueChanged,
              title: Text('Option B'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_switchItemA ? '😀' : '😑'),
                Switch(
                  value: _switchItemA,
                  onChanged: (value) {
                    setState(() {
                      _switchItemA = value;
                    });
                  },
                ),
              ],
            ),
            SwitchListTile(
              value: _switchItemA, // 状态
              onChanged: (value) {
                setState(() {
                  _switchItemA = value;
                });
              },
              title: Text('Switch Item A'), // 标题
              subtitle: Text('Description'), // 描述
              secondary: Icon(_switchItemA
                  ? Icons.visibility
                  : Icons.visibility_off), // 左边小图标
              selected: _switchItemA, // 激活状态下的颜色
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('SliderValue:$_sliderItemA'),
                Slider(
                  value: _sliderItemA, // 显示值
                  onChanged: (value) {
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  activeColor: Theme.of(context).accentColor, // 活动状态下的颜色
                  inactiveColor: Theme.of(context)
                      .accentColor
                      .withOpacity(0.3), // 未活动状态下的颜色
                  min: 0.0, // 最小值
                  max: 10.0, // 最大值
                  divisions: 10, // 分割份数
                  label: '${_sliderItemA.toInt()}', // 拖动滑块时显示的数
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
