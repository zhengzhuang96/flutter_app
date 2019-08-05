import 'package:flutter_app/pages/gaode_map/composite/route_plan_overlay/route_plan_overlay.screen.dart';
import 'package:flutter_app/pages/gaode_map/widgets/function_group.widget.dart';
import 'package:flutter_app/pages/gaode_map/widgets/function_item.widget.dart';
import 'package:flutter/material.dart';

class CompositeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        FunctionGroup(
          headLabel: '路线规划',
          children: <Widget>[
            FunctionItem(
              label: '路线规划 Overlay',
              sublabel: 'RoutePlanOverlayScreen',
              target: RoutePlanOverlayScreen(),
              isLast: true,
            ),
          ],
        ),
      ],
    );
  }
}
