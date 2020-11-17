import 'package:flutter/material.dart';
import 'package:flutter_receitas/widgets/detalheReceita.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
      child: Text("Olá Mundo")
    ),
    );
  }
}

