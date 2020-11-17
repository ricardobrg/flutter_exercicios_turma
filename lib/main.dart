import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List ingredientes = ['a','b','c','d'];
  List controllersIngredientes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
              onPressed: () => clearField(),
              icon: Icon(Icons.delete)
            )
          ]
        ),
        body: Center(
            child: ListView.builder(
              itemCount: ingredientes.length,
              itemBuilder: (BuildContext context, int index) {
                var controller = TextEditingController();
                controller.text = ingredientes[index];
                controllersIngredientes.add(
                    controller
                );
                return ListTile(
                    leading: Icon(Icons.fastfood),
                    trailing: GestureDetector(
                      child: Icon(Icons.delete),
                      onTap: () {controllersIngredientes[index].text = "";}
                    ),
                    title: TextField(
                      controller: controllersIngredientes[index]
                    ),
                    subtitle: Text("digite o ingrediente")
                );
              },
            )
        )
    );
  }

  clearField() {
    controllersIngredientes = null;
  }
}
