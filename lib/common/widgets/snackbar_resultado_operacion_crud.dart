// ignore: file_names
import 'package:flutter/material.dart';

class SnackBarRespuestaOperacionCRUD extends StatelessWidget {
  final String mensaje;
  const SnackBarRespuestaOperacionCRUD(this.mensaje, {Key? key})
      : super(key: key);

  @override
  SnackBar build(BuildContext context) {
    return SnackBar(
      content: Text(mensaje, textAlign: TextAlign.center),
      duration: const Duration(milliseconds: 1500),
      elevation: 10,
      width: 280.0, // Width of the SnackBar.
      padding: const EdgeInsets.symmetric(
        vertical: 20.0, // Inner padding for SnackBar content.
      ),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
