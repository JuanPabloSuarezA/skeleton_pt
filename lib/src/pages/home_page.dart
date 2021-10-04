import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Patrones en moviles"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              "Nombre: Juan Pablo Suárez Ávila",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.add,
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text(
              "Descripción: Patrón esqueleto",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.add,
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text(
              "Consulta a la API",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.add,
              color: Colors.blue,
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.pushNamed(context, "vistaAPI");
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () {
          Navigator.pushNamed(context, "vistaAPI");
        },
      ),
    );
  }
}
