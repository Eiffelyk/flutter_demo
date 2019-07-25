import 'package:flutter/material.dart';

class EFTextFormField extends StatelessWidget {
  final appTitle = "Form Validation Demo";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: appTitle,
        home: Scaffold(
          appBar: AppBar(
            title: Text(appTitle),
          ),
          body: MyTextFormField(),
        ));
  }
}

class MyTextFormField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTextFormFieldState();
}

class MyTextFormFieldState extends State<MyTextFormField> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty||value.compareTo('123')!=0) {
                return "value empty";
              } else {
                return null;
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
                child: Text('Check TextFormField'),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text("data")));
                  }
                }),
          )
        ],
      ),
    );
  }
}
