import 'package:flutter/material.dart';
import '../../routers/application.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> dataArr = [
    {
      'title': '基础组件',
      'arr': [
        {'title': 'Text Widget 文本组件的使用', 'router': '/textWidget'},
        {'title': 'Container容器组件的使用', 'router': '/containerWidget'},
        {'title': 'Image图片组件的使用', 'router': '/imageWidget'},
        {'title': 'ListView 列表组件简介', 'router': '/listViewWidget'},
        {'title': 'GridView网格列表组件', 'router': '/gridViewWidget'},
      ]
    },
    {
      'title': '路由',
      'arr': [
        {'title': '路由传值', 'router': '/routePassingValue'},
      ]
    },
    {
      'title': '扩展组件',
      'arr': [
        {'title': 'flutter_Swiper轮播组件', 'router': '/flutterSwiper'},
      ]
    },
    {
      'title': '操作类',
      'arr': [
        {'title': 'Toast轻提示', 'router': '/toastMessage'},
      ]
    },
    {
      'title': '功能类',
      'arr': [
        {'title': '图片本地缓存', 'router': '/cachedNetworkImage'},
        {'title': 'charts库定义图表', 'router': '/chartsFlutter'},
      ]
    },
    {
      'title': '扩展功能',
      'arr': [
        {'title': '高德地图', 'router': '/gaodeMap'},
        {'title': '微信相关', 'router': '/wechatFluwx'},
        {'title': '支付宝相关', 'router': '/aliPayTobias'},
      ]
    }
  ];

  List<Map> homePageContent = [];

  @override
  void initState() {
    setState(() {
      homePageContent = dataArr;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map> homePageContentList = homePageContent;
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: ListView(
        children: <Widget>[
          CommonPage(homePageContentList: homePageContentList),
        ],
      ),
    );
  }
}

// 常用组件列表
class CommonPage extends StatelessWidget {
  final List homePageContentList;

  CommonPage({Key key, this.homePageContentList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: homePageContentList.map((item) {
          return _commonList(context, item);
        }).toList(),
      ),
    );
  }

  // 列表组件
  Widget _commonList(context, item) {
    return Column(
      children: <Widget>[
        _listTitle(item['title']),
        _listPage(context, item['arr'])
      ],
    );
  }

  // 列表组件标题
  Widget _listTitle(title) {
    return Container(
      width: 690,
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  // 列表内容组件
  Widget _listPage(context, listArr) {
    List homePageContentList;
    homePageContentList = listArr;

    return Container(
      width: 690,
      // margin: EdgeInsets.only(left: 30, right: 10),
      child: Column(
        children: homePageContentList.map((item) {
          return _listContent(context, item);
        }).toList(),
      ),
    );
  }

  // 列表里面内容
  Widget _listContent(context, item) {
    return Container(
      height: 60,
      width: 750,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Color.fromARGB(255, 233, 233, 233),
          ),
        ),
      ),
      child: InkWell(
        onTap: () {
          // Application.router.navigateTo(context, item['router']);
          Application.router
              .navigateTo(context, "${item['router']}?id=${123123123}");
        },
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 30),
                child: Text(item['title']),
              ),
            ),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}
