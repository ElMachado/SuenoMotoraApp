import 'package:flutter/material.dart';

class CardColaborador extends StatelessWidget {
  const CardColaborador({Key? key}) : super(key: key);

  Widget cardColaborador(String titulo, String contenido,
      {required Function btnAction}) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: ListTile(
              leading: const Icon(
                Icons.photo_album,
                color: Colors.green,
              ),
              title: Text(titulo, style: const TextStyle(fontSize: 20.0)),
              subtitle: Text(contenido, style: const TextStyle(fontSize: 20.0)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 50,
                child: TextButton(
                    onPressed: () {
                      btnAction();
                    },
                    child: const Text('Detalles')),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    throw UnimplementedError();
  }
}
