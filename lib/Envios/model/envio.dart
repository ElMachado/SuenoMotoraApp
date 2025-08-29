import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Envio extends Equatable {
  final String nombreEscuela;
  final String responsable;
  final String direccionEnvio;
  final String numeroTelefono;
  final String contenidoEnvio;

  const Envio({
    required this.nombreEscuela,
    required this.responsable,
    required this.direccionEnvio,
    required this.numeroTelefono,
    required this.contenidoEnvio,
  });

  // Factory constructor for creating a new Envio instance from a map.
  factory Envio.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data() ?? {};
    return Envio(
      nombreEscuela: data['nombreEscuela'] ?? '',
      responsable: data['responsable'] ?? '',
      direccionEnvio: data['direccionEnvio'] ?? '',
      numeroTelefono: data['numeroTelefono'] ?? '',
      contenidoEnvio: data['contenidoEnvio'] ?? '',
    );
  }

  // Method for converting an Envio instance to a map.
  Map<String, dynamic> toMap() {
    return {
      'nombreEscuela': nombreEscuela,
      'responsable': responsable,
      'direccionEnvio': direccionEnvio,
      'numeroTelefono': numeroTelefono,
      'contenidoEnvio': contenidoEnvio,
    };
  }

  // copyWith method for creating a new instance with updated fields.
  Envio copyWith({
    String? nombreEscuela,
    String? responsable,
    String? direccionEnvio,
    String? numeroTelefono,
    String? contenidoEnvio,
  }) {
    return Envio(
      nombreEscuela: nombreEscuela ?? this.nombreEscuela,
      responsable: responsable ?? this.responsable,
      direccionEnvio: direccionEnvio ?? this.direccionEnvio,
      numeroTelefono: numeroTelefono ?? this.numeroTelefono,
      contenidoEnvio: contenidoEnvio ?? this.contenidoEnvio,
    );
  }

  @override
  List<Object?> get props => [
        nombreEscuela,
        responsable,
        direccionEnvio,
        numeroTelefono,
        contenidoEnvio,
      ];
}
