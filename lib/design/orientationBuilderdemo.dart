import 'package:flutter/material.dart';

class OrientationBuilderDemo extends StatelessWidget {
  final appTitle = 'Orientation demo';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: appTitle,
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  const OrientationList({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(100, (index) {
            return Center(
              child: Text(
                'Item  $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        );
      }),
    );
  }
}
