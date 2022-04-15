import 'package:flutter/material.dart';

class CardSolicitudesEscuelas {
  Widget cardSolicitudesEscuelas(
      String nombreEscuela, String responsable, solicitud, numeroTelefono,
      {required Function btnAction}) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox.fromSize(size: const Size(30, 30)),
                  Text('Escuela: $nombreEscuela',
                      style: const TextStyle(fontSize: 20.0)),
                  Text('Responsable: $responsable',
                      style: const TextStyle(fontSize: 20.0)),
                  Text('Solicitud: $solicitud',
                      style: const TextStyle(fontSize: 20.0)),
                  Text('Numero de teléfono: $numeroTelefono',
                      style: const TextStyle(fontSize: 20.0)),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
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
}
