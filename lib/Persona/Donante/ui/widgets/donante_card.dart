import 'package:flutter/material.dart';

class CardDonante extends StatelessWidget {
  const CardDonante({Key? key}) : super(key: key);

  Widget cardDonante(String titulo, String contenido,
      {required Function btnAction}) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Center(
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
