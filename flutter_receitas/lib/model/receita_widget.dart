import 'package:flutter/material.dart';
import 'package:flutter_receitas/model/receita.dart';

class ReceitaWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ReceitaWidgetState();
  }
}

class ReceitaWidgetState extends State<ReceitaWidget> {

  String name;

  Widget buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        name = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: ListView(
          children: <Widget>[
            buildName(),
          ]
        )
      );
  }
}