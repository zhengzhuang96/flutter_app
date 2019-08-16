import 'dart:async';
import '../bloc_base.dart';
import 'package:flutter_app/service/service_method.dart';

/* *
 * home_page
 */
class HomePageBloc implements BlocBase {
  // List _data;
  // int _data = 1;

  // // 处理dataArr的stream
  // StreamController<int> _dataController = StreamController<int>();
  // StreamSink<int> get dataSink => _dataController.sink;
  // Stream<int> get dataStream => _dataController.stream;

  // 处理业务逻辑的stream
  // StreamController<List> _uiController = StreamController<List>();
  // StreamSink<List> get uiSink => _uiController.sink;
  // Stream<List> get uiStream => _uiController.stream;
  Stream<List> uiStream;
  // 构造器
  HomePageBloc() {
    uiStream = Stream.fromFuture(requestData());
    // _streamFetchData = Stream.fromFuture(fetchData());
    // dataStream.listen(onData);
    // dataSink.add(_data);
    // // requestData();s
    // dataSink.add(_data);R
  }

  void onData(data){
    //接受数据
  }

  Future<List> requestData() async{
    // await Future.delayed(Duration(seconds: 3));
    return await requestGetUrl('https://www.easy-mock.com/mock/5bc6aca0a8be2f31b25c89b0/index/homePage#!method=POST&queryParameters=%5B%5D&body=&headers=%5B%5D').then((res) {
      return res['data']['arr'];
      // print('valvalvalvalvalvalvalvalvalvalvalvalvalvalvalvalvalvalvalvalvalvalvalval');
      // // return res;
      // // print(res);R
      // // dataSink.add(_data);
    });
  }

  // void _handleData(data) {
  //   print(data);
  //   uiSink.add(data);
  // }


  void dispose() {
    // _dataController.close();
    // _uiContRroller.close();
  }
}
