import 'package:flutter/material.dart';

/* *
 * 弹出式菜单
 */
class PopupMenuButtonDemo extends StatefulWidget {
  @override
  _PopupMenuButtonDemoState createState() => _PopupMenuButtonDemoState();
}

class _PopupMenuButtonDemoState extends State<PopupMenuButtonDemo> {
  String _currentMenuIten = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_currentMenuIten),
                PopupMenuButton(
                  onSelected: (value) {
                    print('Value: $value');
                    setState(() {
                      _currentMenuIten = value;
                    });
                  },
                  itemBuilder: (BuildContext context) => [
                        PopupMenuItem(
                          value: 'Home',
                          child: Text('Home'),
                        ),
                        PopupMenuItem(
                          value: 'Discover',
                          child: Text('Discover'),
                        ),
                        PopupMenuItem(
                          value: 'Community',
                          child: Text('Community'),
                        ),
                      ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
