import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/common/repository/abstrac_object.dart';

class Envio implements AbstractObject {
  String nombreEscuela;
  String responsable;
  String direccionEnvio;
  String numeroTelefono;
  String contenidoEnvio;

  Envio(
    this.nombreEscuela,
    this.responsable,
    this.direccionEnvio,
    this.numeroTelefono,
    this.contenidoEnvio,
  ) {
    nombreEscuela = nombreEscuela;
    responsable = responsable;
    direccionEnvio = direccionEnvio;
    numeroTelefono = numeroTelefono;
    contenidoEnvio = contenidoEnvio;
  }

  @override
  fromDocumentSnapshot({required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return Envio(
      doc.data()!['nombreEscuela'],
      doc.data()!['responsable'],
      doc.data()!['direccionEnvio'],
      doc.data()!['numeroTelefono'],
      doc.data()!['contenidoEnvio'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "nombreEscuela": nombreEscuela,
      "responsable": responsable,
      "direccionEnvio": direccionEnvio,
      "numeroTelefono": numeroTelefono,
      "contenidoEnvio": contenidoEnvio,
    };
  }
}
