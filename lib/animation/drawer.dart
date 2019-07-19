import 'package:flutter/material.dart';

///在屏幕上添加一个 Drawer
class EDrawerDemo extends StatelessWidget {
  final appTitle = "Drawer Demo";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: appTitle,
      home: EDrawerPage(
        title: appTitle,
      ),
    );
  }
}

class EDrawerPage extends StatelessWidget {
  final String title;

  const EDrawerPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("page"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Drawer Header"),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Item 2"),
            ),
          ],
        ),
      ),
    );
  }
}
