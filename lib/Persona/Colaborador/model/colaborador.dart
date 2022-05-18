import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/common/repository/abstrac_object.dart';

class Colaborador implements AbstractObject {
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

  @override
  fromDocumentSnapshot({required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return Colaborador(
      doc.data()!['nombre'],
      doc.data()!['apellido'],
      doc.data()!['telefono'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "nombre": nombre,
      "apellido": apellido,
      "telefono": telefono,
    };
  }
}
