import 'package:flutter/material.dart';

/* *
 * Chip
 * 小部件
 */
class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    '香蕉',
    '苹果',
    '柠檬',
  ];

  String _action = 'Noting';

  List<String> _selected = [];

  String _choice = 'lemon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip 小部件'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16.0, right: 16.0),
        child: ListView(
          children: <Widget>[
            Wrap(
              spacing: 8.0, // 里面小部件左右间距
              runSpacing: 8.0, // 里面小部件上下间距
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('太阳颜色'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Zheng Zhuang'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('壮'),
                  ),
                ),
                Chip(
                  label: Text('Zheng Zhuang'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://i2.hdslb.com/bfs/face/d41aeb642a7b44ca8042ec0e86fdf69f4b18b165.jpg@72w_72h.webp'),
                  ),
                ),
                Chip(
                  label: Text('City'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  deleteButtonTooltipMessage: '删除这个Chip', // 长按提示
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0, // 高度
                  indent: 32.0, // 左边缩进
                ), // 分隔符
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0, // 高度
                  indent: 32.0, // 左边缩进
                ), // 分隔符
                Container(
                  width: double.infinity,
                  child: Text('ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: _tags.map((tag) {
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0, // 高度
                  indent: 32.0, // 左边缩进
                ), // 分隔符
                Container(
                  width: double.infinity,
                  child: Text('FilterChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: _tags.map((tag) {
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0, // 高度
                  indent: 32.0, // 左边缩进
                ), // 分隔符
                Container(
                  width: double.infinity,
                  child: Text('ChoseChip: $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: _tags.map((tag) {
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.black,
                      selected: _choice == tag,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = [
              '香蕉',
              '苹果',
              '柠檬',
            ];
            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}
