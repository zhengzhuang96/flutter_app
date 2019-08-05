import 'package:flutter/material.dart';

class FunctionItem extends StatelessWidget {
  const FunctionItem({
    Key key,
    @required this.label,
    @required this.sublabel,
    @required this.target,
    this.isLast = false,
  }) : super(key: key);

  final String label;
  final String sublabel;
  final Widget target;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: Text(
            label,
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
            sublabel,
            style: TextStyle(color: Colors.black),
          ),
          trailing: Icon(Icons.keyboard_arrow_right, color: Colors.black),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => target),
            );
          },
        ),
        isLast
            ? SizedBox.shrink()
            : Divider(height: 1, indent: 16, color: Colors.black),
      ],
    );
  }
}
