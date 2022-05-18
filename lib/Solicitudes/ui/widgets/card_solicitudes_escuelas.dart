import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/forms_dialog_detalle_solicitudes_escuelas.dart';

class CardSolicitudesEscuelas extends StatelessWidget {
  final String nombreEscuela;
  final String nombreResponsable;
  final String telefonoResponsable;
  final String direccionEscuela;
  final String solicitud;

  const CardSolicitudesEscuelas(
    this.nombreEscuela,
    this.nombreResponsable,
    this.telefonoResponsable,
    this.direccionEscuela,
    this.solicitud,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
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
                Text(nombreResponsable, style: const TextStyle(fontSize: 20.0)),
                const Text('Numero de telefono:',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold)),
                Text(telefonoResponsable,
                    style: const TextStyle(fontSize: 20.0)),
                const Text('Solicitud',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.green,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 500,
                  child: Text(solicitud,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 8,
                      style: const TextStyle(
                        fontSize: 20.0,
                        overflow: TextOverflow.ellipsis,
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              const FormDialogDetalleSolicitudEscuela()
                                  .build(context));
                    },
                    child: const AutoSizeText('Detalles',
                        presetFontSizes: [20, 18, 15, 10, 5],
                        maxLines: 1,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 20,
                        )),
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
