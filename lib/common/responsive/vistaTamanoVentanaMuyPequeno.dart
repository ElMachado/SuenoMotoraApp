import 'package:flutter/material.dart';

class VentanaMuyPequena extends StatelessWidget {
  const VentanaMuyPequena({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/warnin.png',
          height: 200,
          width: 200,
        ),
        const Text(
          'El tamaño de pantalla es muy pequeño',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
