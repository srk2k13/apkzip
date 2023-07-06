import 'package:flutter/material.dart';

import 'list_widget.dart';

void main() {
  runApp(WidgetApp());
}

class WidgetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List-Widget App',
      initialRoute: '/',
      routes: {
        '/': (context) => ListWidget(),

      },
    );
  }
}