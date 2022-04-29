import 'package:flutter/material.dart';

class Ubicaciones {
  String _longitud;
  String _altitud;
  String _nombreUbicacion;
  Map<String, Image> _fotosUbicaciones;
  Ubicaciones(this._longitud, this._altitud, this._nombreUbicacion,
      this._fotosUbicaciones) {
    _longitud = _longitud;
    _altitud = _altitud;
    _nombreUbicacion = _nombreUbicacion;
    _fotosUbicaciones = _fotosUbicaciones;
  }
}
