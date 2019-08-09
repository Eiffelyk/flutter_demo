import 'package:flutter/material.dart';

class SliverAppDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Floating App Bar";
    return MaterialApp(
      title: title,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text(title),
              floating: true,
              flexibleSpace: Placeholder(),
              expandedHeight: 200.0,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                    title: Text("item$index"),
                  ),childCount: 40),
            )
          ],
        ),
      ),
    );
  }
}
