import 'package:flutter/material.dart';
import 'package:flutter_receitas/widgets/detalheReceita.dart';
import 'model/receita.dart';

void main() => runApp(MyApp());

final String nome = "Receita de teste";

final List<String> ingredientes = [
  "ingrediente 1",
  "ingrediente 2",
  "ingrediente 3",
  "ingrediente 4",
  "ingrediente 5",
];

final List<String> passos = [
  "passos1",
  "passos2",
  "passos3",
  "passos4",
  "passos5",
];
final int duracao = 60;
final String imgURL = "https://via.placeholder.com/300";

class MyApp extends StatelessWidget {

  Receita receita = Receita(
      nome,
      ingredientes,
      passos,
      duracao,
      imgURL
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: detalheReceita(receita: receita),
    );
  }
}

