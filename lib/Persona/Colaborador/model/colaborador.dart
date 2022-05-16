import 'package:cloud_firestore/cloud_firestore.dart';

class Colaborador {
  String nombre;
  String apellido;
  String telefono;
  Colaborador(
    this.nombre,
    this.apellido,
    this.telefono,
  ) {
    nombre = nombre;
    apellido = apellido;
    telefono = telefono;
  }

  factory Colaborador.fromDocumentSnapshot(
      {required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return Colaborador(
      doc.data()!['nombre'],
      doc.data()!['apellido'],
      doc.data()!['telefono'],
    );
  }
}
