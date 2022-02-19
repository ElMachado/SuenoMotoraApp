import 'package:flutter/material.dart';
import 'package:suenomotora_app/providers/menu_provider.dart';

class Colaboradores extends StatefulWidget {
  Colaboradores({Key? key}) : super(key: key);

  @override
  State<Colaboradores> createState() => _ColaboradoresState();
}

class _ColaboradoresState extends State<Colaboradores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colaboradores'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
        child: ListView(
          children: [
            _cardTipo1('Jesús Arroyo', 'ing de sistemas- tel 3105124359')
          ],
        ),
      ),
    );
  }
}

Widget _cardTipo1(String titulo, String contenido) {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      children: <Widget>[
        ListTile(
          leading: const Icon(
            Icons.photo_album,
            color: Colors.blue,
          ),
          title: Text(titulo),
          subtitle: Text(contenido),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(onPressed: () {}, child: const Text('Cancelar')),
            TextButton(onPressed: () {}, child: const Text('ok')),
          ],
        )
      ],
    ),
  );
}
