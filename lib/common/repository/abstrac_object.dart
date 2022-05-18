import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/Persona/Donante/model/donante.dart';

import '../../Persona/Colaborador/model/colaborador.dart';

enum ObjectType {
  colaborador,
  donante,
}

abstract class AbstractObject {
  factory AbstractObject(ObjectType type) {
    switch (type) {
      case ObjectType.colaborador:
        return Colaborador('', '', '');
      case ObjectType.donante:
        return Donante('', '', '');
      default:
        return AbstractObject(ObjectType.colaborador);
    }
  }

  fromDocumentSnapshot({required DocumentSnapshot<Map<String, dynamic>> doc});
}
