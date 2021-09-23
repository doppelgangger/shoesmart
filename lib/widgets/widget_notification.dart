import 'package:flutter/material.dart';

class WidgetNotification extends StatelessWidget {
  final String message;

  const WidgetNotification({Key key, @required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(this.message),
        ],
      ),
    );
  }
}
