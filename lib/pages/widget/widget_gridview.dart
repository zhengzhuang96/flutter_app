import 'package:flutter/material.dart';

/* *
 * GridView网络列表组件
 */
class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Widget'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20.0),
        crossAxisSpacing: 2.0, // 网格间的空当，相当于每个网格之间的间距
        mainAxisSpacing: 3.0, // 网格每行的空挡，每行的上下间距
        crossAxisCount: 3, // 网格的列数，相当于一行放置的网格数量
        childAspectRatio:
            0.7, // 宽高比，这个值的意思是宽是高的多少倍，如果宽是高的2倍，那我们就写2.0, 果高是宽的2倍，我们就写0.5
        children: <Widget>[
          const Text('第一行第一个'),
          const Text('第一行第二个'),
          const Text('第一行第三个'),
          const Text('第二行第一个'),
          const Text('第二行第二个'),
          const Text('第二行第三个'),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/10/10/112514.30587089_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/13/093605.61422332_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/07/092515.55805319_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/21/090246.16772408_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/17/162028.94879602_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/19/165350.52237320_135X190X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/16/115256.24365160_180X260X4.jpg',
              fit: BoxFit.cover),
          new Image.network(
              'http://img5.mtime.cn/mt/2018/11/20/141608.71613590_135X190X4.jpg',
              fit: BoxFit.cover),
        ],
      ),
    );
  }
}
