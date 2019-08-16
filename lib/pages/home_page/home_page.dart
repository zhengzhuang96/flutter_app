import 'package:flutter/material.dart';
import 'package:flutter_app/routers/NavigatorUtil.dart';
import 'package:flutter_app/blocs/bloc_provider.dart';
import 'package:flutter_app/blocs/home_page/home_page_bloc.dart';

/* *
 * HomePage
 * 首页
 */
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomePageBloc>(
      bloc: HomePageBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('data'),
        ),
        body: CommonPage(),
      ),
    );
  }
}

// 常用组件列表
class CommonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomePageBloc bloc = BlocProvider.of<HomePageBloc>(context);
    return Container(
      child: StreamBuilder<List>(
        stream: bloc.uiStream,
        initialData: [],
        builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: Text('Loading...'),
            );
          }
          return ListView(
            shrinkWrap: true,
            children: snapshot.data.map<Widget>((item) {
              return _commonList(context, item);
            }).toList(),
          );
        },
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
          NavigatorUtil.jump(context, "${item['router']}?id=${123123123}");
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
