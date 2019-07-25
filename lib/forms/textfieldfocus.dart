import 'package:flutter/material.dart';

class MyTextFieldFocusDome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyTextFieldFocusDome',
      home: TextFieldFocus(),
    );
  }
}

class TextFieldFocus extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldFocus();
  }
}

class _TextFieldFocus extends State<TextFieldFocus> {
  FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFieldFocus"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              autofocus: true,
            ),
            TextField(
              focusNode: _focusNode,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.edit),
          tooltip: "ssddds",
          onPressed: () {
            FocusScope.of(context).requestFocus(_focusNode);
          }),
    );
  }
}
