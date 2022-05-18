import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/common/repository/abstrac_object.dart';

class SolicitudEscuelas implements AbstractObject {
  String nombreEscuela;
  String nombreResponsable;
  String telefonoResponsable;
  String direccionEscuela;
  String queSolicita;

  SolicitudEscuelas(
    this.nombreEscuela,
    this.nombreResponsable,
    this.telefonoResponsable,
    this.direccionEscuela,
    this.queSolicita,
  ) {
    nombreEscuela = nombreEscuela;
    nombreResponsable = nombreResponsable;
    telefonoResponsable = telefonoResponsable;
    direccionEscuela = direccionEscuela;
    queSolicita = queSolicita;
  }

  @override
  fromDocumentSnapshot({required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return SolicitudEscuelas(
      doc.data()!['nombre_escuela'],
      doc.data()!['nombre_responsable'],
      doc.data()!['telefono_responsable'],
      doc.data()!['direccion_escuela'],
      doc.data()!['que_solicita'],
    );
  }
}
