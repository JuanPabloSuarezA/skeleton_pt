import 'package:flutter/material.dart';
import 'package:skeleton_pt/src/components/post_class.dart';

import 'package:skeleton_pt/widgets/skeleton_container.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InfoPage extends StatefulWidget {
  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  bool cargando = true;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future loadData() async {
    setState(() {
      cargando = true;
    });
    await Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        cargando = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Información de API"),
        ),
        body: cargando ? _mostrarEsqueleto() : _extraerInfo());
  }

  Widget _mostrarEsqueleto() {
    List<Widget> listaVistas = [];
    for (var i = 0; i < 10; i++) {
      for (var i = 0; i < 3; i++) {
        listaVistas.add(SizedBox(
          height: 10,
        ));
        listaVistas.add(Container(
            child: SkeletonContainer(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            margin: EdgeInsets.symmetric(horizontal: 15)));
      }
      listaVistas.add(Divider());
    }

    return ListView(
      children: listaVistas,
    );
  }

  Widget _mostrarInfo(List<Post>? listaInfo) {
    List<Widget> listaVistas = [];

    listaInfo?.forEach((element) {
      listaVistas.add(ListTile(
        title: Text(element.toString()),
      ));

      listaVistas.add(Divider());
    });

    return ListView(
      children: listaVistas,
    );
  }

  Widget _extraerInfo() {
    return FutureBuilder<List<Post>>(
      future: fetchPost(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<Post>> snapshot) {
        if (snapshot.hasData) {
          if (snapshot.data.toString() == "[]") {
            return _mostrarEsqueleto();
          }
          return _mostrarInfo(snapshot.data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }
}

Future<List<Post>> fetchPost() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  if (response.statusCode == 200) {
    List listaJson = json.decode(response.body);
    List<Post> listaPost = [];
    listaJson.forEach((element) {
      listaPost.add(Post.fromJson(element));
    });
    return listaPost;
  } else {
    throw Exception('No se pudo cargar la información');
  }
}
