import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/autoSizedText.dart';

import '../../model/Envio.dart';

Widget cardEnvios(Envio envios) {
  return LayoutBuilder(
    builder: (context, constraints) => Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            autoSizeText('Nombre de la escuela: ${envios.nombreEscuela}'),
            autoSizeText('Nombre responsable: ${envios.responsable}'),
            autoSizeText('Direccion de envio: ${envios.direccionEnvio}'),
            autoSizeText('Numero de telefono: ${envios.numeroTelefono}'),
            autoSizeText('Contenido de envio: ${envios.contenidoEnvio}'),
            Container(
              padding: const EdgeInsets.only(bottom: 30, top: 30),
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  envios.btnAction();
                },
                child: const AutoSizeText('Detalles',
                    presetFontSizes: [25, 20, 15, 10],
                    maxLines: 1,
                    softWrap: true,
                    
                    style:
                        TextStyle(fontSize: 20, backgroundColor: Colors.amber)),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   mainAxis Size: MainAxisSize.max,
              //   children: <Widget>[
              //     Expanded(
              //       flex: 2,
              //       child: TextButton(
              //           onPressed: () {
              //             btnAction();
              //           },
              //           child: const Text('Detalles')),
              //     ),
              //   ],
              // ),
            )
          ],
        ),
      ),
    ),
  );
}
