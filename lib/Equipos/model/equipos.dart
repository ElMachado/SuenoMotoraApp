import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/common/repository/abstrac_object.dart';

class Equipos implements AbstractObject {
  String procesador;
  String memoriaRAM;
  String discoDuro;
  String observaciones;
  String foto;

  Equipos(
    this.procesador,
    this.memoriaRAM,
    this.discoDuro,
    this.observaciones,
    this.foto,
  ) {
    procesador = procesador;
    memoriaRAM = memoriaRAM;
    discoDuro = discoDuro;
    foto = foto;
  }

  @override
  fromDocumentSnapshot({required DocumentSnapshot<Map<String, dynamic>> doc}) {
    return Equipos(
      doc.data()!['procesador'],
      doc.data()!['memoria'],
      doc.data()!['disco_duro'],
      doc.data()!['observaciones'],
      doc.data()!['foto'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      "procesador": procesador,
      "memoria": memoriaRAM,
      "disco_duro": discoDuro,
      "observaciones": observaciones,
      "foto": foto,
    };
  }
}
