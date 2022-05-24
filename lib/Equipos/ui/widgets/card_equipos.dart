import 'package:flutter/material.dart';

import 'form_dialog_detalle_equipo.dart';

class CardEquipos extends StatelessWidget {
  final String _procesador;
  final String _memoria;
  final String _disco;
  final String _observaciones;
  final String _image;

  const CardEquipos(
    this._procesador,
    this._memoria,
    this._disco,
    this._observaciones,
    this._image,
  );

  _buildFormDetalles(context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return const FormDialogDetalleEquipos().build(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FadeInImage(
              placeholder: const AssetImage('assets/train2placeholder.gif'),
              placeholderFit: BoxFit.fill,
              image: NetworkImage(_image),
              fit: BoxFit.fill,
              width: 500,
              height: 500.0),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Text('Procesador:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                    Text(_procesador,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    const Text('Ram: ',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                    Text(_memoria,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    const Text('Disco duro:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                    Text(_disco,
                        textAlign: TextAlign.start,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    const Text('Observaciones:',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        )),
                    SizedBox(
                      width: 600,
                      child: Text(_observaciones,
                          textAlign: TextAlign.start,
                          maxLines: 10,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            overflow: TextOverflow.ellipsis,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: TextButton(
                      onPressed: () {
                        _buildFormDetalles(context);
                      },
                      child: const Text('Detalles',
                          style: TextStyle(
                            fontSize: 20,
                          ))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
