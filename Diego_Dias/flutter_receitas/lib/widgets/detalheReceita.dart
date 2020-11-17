import 'package:flutter/material.dart';
import 'package:flutter_receitas/model/receita.dart';


TextEditingController controller = TextEditingController();

class detalheReceita extends StatelessWidget {

  final Receita receita;

  const detalheReceita({Key key, this.receita}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(receita.nome),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: (){},
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: (){},
            ),
          ]
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Container(
                child: Text("Olá, Diego"),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.home),
              title: Text("Início"),
            ),
            ListTile(
              trailing: Icon(Icons.local_dining),
              title: Text("Receitas"),
            ),
            ListTile(
              trailing: Icon(Icons.favorite),
              title: Text("Favoritas"),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //Image.network(receita.imgURL),
          ListTile(
            title: Text(receita.nome),
            subtitle: Text("duração: " + receita.duracao.toString() +" min"),
          ),
          ExpansionTile(
            title: Text("Ingredientes"),
            children: ingredientes(receita),
          ),
            //children: ingredientes(receita),
          ExpansionTile(
            title: Text("Passos"),
            children: passos(receita),
          ),
      ],
    ),
    );
  }

  List<Widget> ingredientes(Receita receita){
    List<Widget> ingredientes = [];

    receita.ingredientes.forEach((String ingrediente)  {
    TextEditingController controle = TextEditingController(   );
    ingredientes.add(
      TextField(
        controller: controle,
        decoration: InputDecoration(
        ),
      )
          );
  });
    return ingredientes;
  }

  passos(Receita receita){
    List<Widget> passos = [];
    for( int i = 0; i < receita.passos.length; i++) {
      String indice = (i + 1).toString();
      passos.add(Text(
          indice + " - " + receita.passos[i]
      ));
    }
    return passos;
  }

  }



