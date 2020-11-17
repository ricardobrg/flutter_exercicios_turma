import 'package:flutter/material.dart';

class Item {
  Item({
    this.expandedValue,
  });
  String expandedValue;
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (int index) {
    return Item(
      expandedValue: '$index',
    );
  });
}

TextEditingController controller = TextEditingController();

class listaIngredientes extends StatefulWidget {

  listaIngredientes({Key key}) : super(key: key);

  @override
  _listaIngredientes createState() => _listaIngredientes();
}

class _listaIngredientes extends State<listaIngredientes> {

  final List<Item> data = generateItems(5);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (Context, int index){
          return Container(
              child: TextField(controller: controller,
                textAlign: TextAlign.center,
                 maxLength: 20,
                 onChanged: (value) => print(value),
                  onSubmitted: (value) => print(value),
                 decoration: InputDecoration(
                  hintText: "digite aqui",
                 labelText: "Ingrediente",
                labelStyle: TextStyle(color: Colors.black),
          ),
          ),
          );
        },
    );

    /*Column(
          children: <Widget> [
            TextField(controller: controller),
            ],
          );*/
   }

}

