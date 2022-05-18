import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/common/repository/abstrac_object.dart';

class Donante implements AbstractObject {
  String nombre;
  String apellido;
  String telefono;

  Donante(
    this.nombre,
    this.apellido,
    this.telefono,
  ) {
    nombre = nombre;
    apellido = apellido;
    telefono = telefono;
  }

  @override
  fromDocumentSnapshot({required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return Donante(
      doc.data()!['nombre'],
      doc.data()!['apellido'],
      doc.data()!['telefono'],
    );
  }
}
