import 'package:flutter/material.dart';

/* *
 * Drawer抽屉
 */
class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer'),
      ),
      body: Container(
        child: Center(
          child: Text('Drawer'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            // DrawerHeader(
            //   child: Text('header'.toUpperCase()),
            //   decoration: BoxDecoration(
            //     color: Colors.grey[100]
            //   ),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text(
                'zhengzhuang',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('zheng951203@163.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i2.hdslb.com/bfs/face/d41aeb642a7b44ca8042ec0e86fdf69f4b18b165.jpg@72w_72h.webp'),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: NetworkImage(
                      'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity(0.6),
                    BlendMode.hardLight,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text('Message', textAlign: TextAlign.right),
              trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Favorite', textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('Settings', textAlign: TextAlign.right),
              trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
