import 'package:flutter/material.dart';

class ThemeDataTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';
    return new MaterialApp(
      title: appName,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],
        fontFamily: "Regular",
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14.0, fontFamily: "Regular"),
        ),
      ),
      home: ThemeDataState(title: appName),
    );
  }
}

class ThemeDataState extends StatelessWidget {
  final String title;

  const ThemeDataState({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text(
            "Text with a background color",
            style: Theme.of(context).textTheme.headline,
          ),
        ),
      ),
      floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context)
                  .colorScheme
                  .copyWith(secondary: Colors.yellow)),
          child: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.add),
          )),
    );
  }
}
