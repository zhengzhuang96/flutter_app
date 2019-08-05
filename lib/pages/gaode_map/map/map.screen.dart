import 'package:amap_base/amap_base.dart';
import 'package:flutter_app/pages/gaode_map/map/create_map/custom_map.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/create_map/show_indoor_map.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/create_map/show_map.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/create_map/switch_map_layer.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/draw_on_map/draw_point.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/draw_on_map/draw_polyline.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/interact_with_map/code_interaction.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/interact_with_map/control_interaction.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/interact_with_map/gesture_interaction.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/interact_with_map/screen_shot.screen.dart';
import 'package:flutter_app/pages/gaode_map/map/tools/calcute_distance_screen.dart';
import 'package:flutter_app/pages/gaode_map/map/tools/coordinate_transformation_screen.dart';
import 'package:flutter_app/pages/gaode_map/widgets/dimens.dart';
import 'package:flutter_app/pages/gaode_map/widgets/function_group.widget.dart';
import 'package:flutter_app/pages/gaode_map/widgets/function_item.widget.dart';
import 'package:flutter/material.dart';

class MapDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FunctionGroup(
          headLabel: '创建地图',
          children: <Widget>[
            FunctionItem(
              label: '显示地图',
              sublabel: 'CreateMapScreen',
              target: ShowMapScreen(),
            ),
            FunctionItem(
              label: '显示室内地图',
              sublabel: 'ShowsIndoorMapScreen',
              target: ShowsIndoorMapScreen(),
            ),
            FunctionItem(
              label: '切换地图图层',
              sublabel: 'SwitchMapLayerScreen',
              target: SwitchMapLayerScreen(),
            ),
            FunctionItem(
              label: '自定义地图',
              sublabel: 'CustomMapScreen',
              target: CustomMapScreen(),
            ),
            Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    '使用离线地图',
                    style: TextStyle(color: Colors.black),
                  ),
                  subtitle: Text(
                    '使用离线地图',
                    style: TextStyle(color: Colors.black),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () => OfflineManager().openOfflineManager(),
                ),
              ],
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: '与地图交互',
          children: <Widget>[
            FunctionItem(
              label: '控件交互',
              sublabel: 'ControlInteractionScreen',
              target: ControlInteractionScreen(),
            ),
            FunctionItem(
              label: '手势交互',
              sublabel: 'GestureInteractionScreen',
              target: GestureInteractionScreen(),
            ),
            FunctionItem(
              label: '调用方法交互',
              sublabel: 'CodeInteractionScreen',
              target: CodeInteractionScreen(),
            ),
            FunctionItem(
              label: '截图',
              sublabel: 'ScreenShotScreen',
              target: ScreenShotScreen(),
              isLast: true,
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: '在地图上绘制',
          children: <Widget>[
            FunctionItem(
              label: '绘制点标记',
              sublabel: 'DrawPointScreen',
              target: DrawPointScreen(),
            ),
            FunctionItem(
              label: '绘制线',
              sublabel: 'DrawPolylineScreen',
              target: DrawPolylineScreen(),
              isLast: true,
            ),
          ],
        ),
        SPACE_BIG,
        FunctionGroup(
          headLabel: "工具",
          children: <Widget>[
            FunctionItem(
              label: "坐标转换",
              sublabel: "CoordinateTransformationScreen",
              target: CoordinateTransformationScreen(),
            ),
            FunctionItem(
              label: "两点间距离计算",
              sublabel: "CalcuteDistanceScreen",
              target: CalcuteDistanceScreen(),
              isLast: true,
            ),
          ],
        ),
      ],
    );
  }
}
