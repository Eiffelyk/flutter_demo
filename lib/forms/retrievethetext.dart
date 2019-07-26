import 'package:flutter/material.dart';

class RetrieveTheTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Retrieve The Text",
      home: RetrieveTheText(),
    );
  }
}

class RetrieveTheText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => RetrieveTheTextState();
}

class RetrieveTheTextState extends State<RetrieveTheText> {
  TextEditingController textFieldController;

  @override
  void initState() {
    textFieldController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retrieve the text"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: textFieldController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.text_fields),
        tooltip: "show me TextField value",
        onPressed: () {
          return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(

                content: Text(textFieldController.text),
                title: Text("Value"),
                actions: <Widget>[
                  FlatButton(

                    child: Text("Yes"),
                  ),
                  FlatButton(
                    child: Text("No"),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }
}
