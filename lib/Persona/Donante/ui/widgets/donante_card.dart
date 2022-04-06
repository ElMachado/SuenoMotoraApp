import 'package:flutter/material.dart';

class CardDonante extends StatelessWidget {
  const CardDonante({Key? key}) : super(key: key);

  Widget cardDonante(String titulo, String contenido,
      {required Function btnAction}) {
    return LayoutBuilder(
      builder: (context, constraints) => Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ListTile(
              leading: const Icon(
                Icons.photo_album,
                color: Colors.green,
              ),
              title: Text(titulo, style: const TextStyle(fontSize: 20.0)),
              subtitle: Text(contenido, style: const TextStyle(fontSize: 20.0)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
