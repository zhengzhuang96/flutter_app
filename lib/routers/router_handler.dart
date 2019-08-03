import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import '../pages/404.dart';
import '../pages/widget/widget_text.dart';
import '../pages/widget/widget_container.dart';
import '../pages/widget/widget_image.dart';
import '../pages/widget/widget_listview.dart';
import '../pages/widget/widget_gridview.dart';
import '../pages/route_passing_value/route_passing_value.dart';
import '../pages/gaode_map/gaode_map.dart';

/* *
 * handler就是每个路由的规则，编写handler就是配置路由规则，
 * 比如我们要传递参数，参数的值是什么，这些都需要在Handler中完成。
 */
// 404页面
Handler notFoundHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return NotFound();
  },
);

// text_widget页面
Handler textWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return WidgetText();
  },
);

// widget_container页面
Handler containerWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ContainerWidget();
  },
);

// widget_image页面
Handler imageWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ImageWidget();
  },
);

// widget_listview页面
Handler listViewWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return ListViewWidget();
  },
);

// widget_listview页面
Handler gridViewWidgetHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return GridViewWidget();
  },
);

// route_passing_value页面
Handler routePassingValueHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    String goodsId = params['id'].first;
    // print('index>details goodsID is ${goodsId}');
    return RoutePassingValue(goodsId);
  },
);

// gaode_map页面
Handler gaodeMapHanderl = Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return GaodeMap();
  },
);