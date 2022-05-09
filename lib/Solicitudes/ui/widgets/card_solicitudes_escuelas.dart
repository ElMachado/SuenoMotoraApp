import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CardSolicitudesEscuelas {
  Widget cardSolicitudesEscuelas(
      String nombreEscuela, String responsable, solicitud, numeroTelefono,
      {required Function btnAction}) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Escuela:',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            Text(nombreEscuela, style: const TextStyle(fontSize: 20.0)),
            const Text('Responsable:',
                style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            Text(responsable, style: const TextStyle(fontSize: 20.0)),
            const Text('Solicitud',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            Text('$solicitud', style: const TextStyle(fontSize: 20.0)),
            const Text('Numero de telefono:',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold)),
            Text('$numeroTelefono', style: const TextStyle(fontSize: 20.0)),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: TextButton(
                      onPressed: () {
                        btnAction();
                      },
                      child: const AutoSizeText('Detalles',
                          presetFontSizes: [20, 18, 15, 10, 5],
                          maxLines: 1,
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
