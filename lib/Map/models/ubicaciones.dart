import 'package:flutter/material.dart';

class Ubicaciones {
  String _longitud;
  String _altitud;
  String _nombreUbicacion;
  Map<String, Image> _fotos_ubicaciones;
  Ubicaciones(this._longitud, this._altitud, this._nombreUbicacion,
      this._fotos_ubicaciones) {
    _longitud = _longitud;
    _altitud = _altitud;
    _nombreUbicacion = _nombreUbicacion;
    _fotos_ubicaciones = _fotos_ubicaciones;
  }
}
