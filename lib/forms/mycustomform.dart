import 'package:flutter/material.dart';

class EFCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "retrieve Text input",
      home: EFCustomForm(),
    );
  }
}

class EFCustomForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EFCustomFormState();
}

class _EFCustomFormState extends State<EFCustomForm> {
  final efTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    efTextEditingController.addListener(_printEdit);
  }

  @override
  void dispose() {
    efTextEditingController.dispose();
    super.dispose();
  }

  _printEdit() {
    print("Second Text Field:$efTextEditingController.text");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Input"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text) {
                print("First Text field:$text");
              },
            ),
            TextField(
              controller: efTextEditingController,
            )
          ],
        ),
      ),
    );
  }
}
