import 'package:flutter/material.dart';

import 'package:suenomotora_app/Envios/model/envio.dart';
import 'package:suenomotora_app/common/widgets/auto_sized_text.dart';

import 'form_dialog_detalle_envios.dart';

class CardEnvios extends StatelessWidget {
  final Envio envio;

  const CardEnvios({
    Key? key,
    required this.envio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 500,
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
                    autoSizeText(envio.nombreEscuela),
                    const Text('Nombre responsable:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    autoSizeText(' ${envio.responsable}'),
                    const Text('Direccion de envio: ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    autoSizeText(' ${envio.direccionEnvio}'),
                    const Text('Numero de telefono:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    autoSizeText(' ${envio.numeroTelefono}'),
                    const Text('Contenido del envio:',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                    autoSizeText(
                      envio.contenidoEnvio,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) =>
                              const FormDialogDetalleEnvio().build(context));
                    },
                    child: const Text('Detalles',
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
}
