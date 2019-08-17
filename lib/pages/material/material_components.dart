import 'package:flutter/material.dart';
import 'package:flutter_app/pages/material/chip_demo.dart';
import 'package:flutter_app/pages/material/datetime_demo.dart';
import './button_demo.dart';
import './floating_action_button.dart';
import './popup_menu_button.dart';
import './checkbox_demo.dart';
import './simple_dialog.dart';

/* *
 * 小部件
 */
class MaterialComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: 'FloatingActionButton',
            page: FloatingActionButtonDemo(),
          ),
          ListItem(
            title: 'ButtonDemo',
            page: ButtonDemo(),
          ),
          ListItem(
            title: 'PopupMenuButtonDemo',
            page: PopupMenuButtonDemo(),
          ),
          ListItem(
            title: 'CheckboxDemo',
            page: CheckboxDemo(),
          ),
          ListItem(
            title: 'DateTimeDemo',
            page: DateTimeDemo(),
          ),
          ListItem(
            title: '对话框（选着对话框）',
            page: SimpleDialogDemo(),
          ),
          ListItem(
            title: 'Chip 小碎片 小部件',
            page: ChipDemo(),
          ),
        ],
      ),
    );
  }
}

/* *
 * 
 */
class _WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('_WidgetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[],
            ),
          ],
        ),
      ),
    );
  }
}


class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({this.title, this.page});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}
