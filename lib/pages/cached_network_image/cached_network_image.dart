import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

/* *
 * 图片本地缓存
 */
class CachedNetworkImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('图片本地缓存'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('非本地缓存图片'),
            _sizedContainer(
              Image.network(
                  'http://img95.699pic.com/photo/40159/2743.jpg_wh860.jpg'),
            ),
            Text('本地缓存图片'),
            _sizedContainer(
              new CachedNetworkImage(
                imageUrl:
                    "http://img95.699pic.com/photo/40159/2743.jpg_wh860.jpg",
                placeholder: (context, url) => Image.network(url),
                errorWidget: (context, url, error) => new Icon(Icons.error),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sizedContainer(Widget child) {
    return new SizedBox(
      width: 300.0,
      height: 150.0,
      child: new Center(
        child: child,
      ),
    );
  }
}
