import 'package:flutter/material.dart';

class CardColaborador extends StatelessWidget {
  final String _nombre;
  final String _apellido;
  final String _telefono;
  final Function _btnAction;

  const CardColaborador(
    this._nombre,
    this._apellido,
    this._telefono,
    this._btnAction,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      _nombre,
                      style: const TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      _apellido,
                      style: const TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      _telefono,
                      style: const TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 120,
                height: 50,
                child: TextButton(
                    onPressed: () {
                      _btnAction();
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
