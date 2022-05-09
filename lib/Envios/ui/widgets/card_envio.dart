import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/auto_sized_text.dart';

import '../../model/envio.dart';

Widget cardEnvios(Envio envios) {
  return LayoutBuilder(
    builder: (context, constraints) => Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text('Nombre de la escuela:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
            autoSizeText(envios.nombreEscuela),
            const Text('Nombre responsable:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
            autoSizeText(' ${envios.responsable}'),
            const Text('Direccion de envio: ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
            autoSizeText(' ${envios.direccionEnvio}'),
            const Text('Numero de telefono:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
            autoSizeText(' ${envios.numeroTelefono}'),
            const Text('Contenido del envio:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green)),
            autoSizeText(
              envios.contenidoEnvio,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {
                    envios.btnAction();
                  },
                  child: const AutoSizeText('Detalles',
                      maxLines: 1,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 20,
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
