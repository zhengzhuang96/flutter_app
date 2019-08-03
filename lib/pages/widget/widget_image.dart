import 'package:flutter/material.dart';

/* *
 * Image图片组件
 * Image.asset:加载资源图片，就是加载项目资源目录中的图片,加入图片后会增大打包的包体体积，用的是相对路径
 * Image.network:网络资源图片，意思就是你需要加入一段http://xxxx.xxx的这样的网络路径地址
 * Image.file:加载本地图片，就是加载本地文件中的图片，这个是一个绝对路径，跟包体无关
 * Image.memory: 加载Uint8List资源图片
 */
class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Center(
        child: Container(
          child: new Image.network(
            'http://img5.mtime.cn/mt/2018/10/22/104316.77318635_180X260X4.jpg',
            scale: 1.0,
            fit: BoxFit.contain, // fit属性可以控制图片的拉伸和挤压，这些都是根据图片的父级容器来
            // 图片的混合模式
            color: Colors.greenAccent, // 是要混合的颜色，如果你只设置color是没有意义的
            colorBlendMode: BlendMode.darken, // colorBlendMode:是混合模式，相当于我们如何混合
            // 图片重复
            repeat: ImageRepeat.repeat,
          ),
          width: 300.0,
          height: 200.0,
          color: Colors.lightBlue,
        ),
      ),
    );
  }
}
