import 'package:flutter/material.dart';

class DismissibleDemo extends StatefulWidget {
  DismissibleDemo({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DismissibleState();
  }
}

class DismissibleState extends State<DismissibleDemo> {
  final items = List<String>.generate(30, (i) => "Item${i + 1}");

  @override
  Widget build(BuildContext context) {
    final titleText = "Dismissing Item";
    return MaterialApp(
      title: titleText,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(titleText),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return Dismissible(
                key: Key(item),
                onDismissed: (direction){
                  setState(() {
                    items.removeAt(index);
                  });
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text("$item dismissed")));
                },
                background: Container(color: Colors.deepOrange,),
                child: ListTile(title: Text("$item"),),
              );
            }),
      ),
    );
  }
}
