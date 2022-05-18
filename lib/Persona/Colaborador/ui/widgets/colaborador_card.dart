import 'package:auto_size_text/auto_size_text.dart';
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
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 40.0, left: 20),
                  child: SizedBox(
                      width: 80,
                      height: 80,
                      child: Image(image: AssetImage('assets/avatar.png'))),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        _nombre,
                        overflow: TextOverflow.ellipsis,
                        minFontSize: 19,
                        style: const TextStyle(),
                        presetFontSizes: const [15, 19, 20, 25],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        _apellido,
                        overflow: TextOverflow.ellipsis,
                        minFontSize: 19,
                        presetFontSizes: const [15, 19, 20, 25],
                        style: const TextStyle(),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AutoSizeText(
                        _telefono,
                        minFontSize: 19,
                        presetFontSizes: const [15, 19, 20, 25],
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
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
