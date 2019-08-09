import 'package:flutter/material.dart';

class LongListViewDemo extends StatelessWidget {
  final List<String> items;

  LongListViewDemo({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = "Long ListView";
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return ListTile(
            title: Text("${items[index]}"),
          );
        }),
      ),
    );
  }
}
