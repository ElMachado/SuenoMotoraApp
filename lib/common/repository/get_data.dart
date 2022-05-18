import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/Persona/Donante/model/donante.dart';

import '../../Persona/Colaborador/model/colaborador.dart';

class GetData {
  final _db = FirebaseFirestore.instance;

  final Colaborador _colaborador = Colaborador('', '', '');
  final Donante _donante = Donante('', '', '');

  Stream<List<Colaborador>> colaboradorStream() {
    try {
      return _db.collection("Colaboradores").snapshots().map((colaboradores) {
        final List<Colaborador> colaboradoresFromFirestore = <Colaborador>[];
        for (final DocumentSnapshot<Map<String, dynamic>> doc
            in colaboradores.docs) {
          colaboradoresFromFirestore
              .add(_colaborador.fromDocumentSnapshot(doc: doc));
        }
        return colaboradoresFromFirestore;
      });
    } catch (e) {
      rethrow;
    }
  }

  Stream<List<Donante>> donanteStream() {
    try {
      return _db.collection("donantes").snapshots().map((donantes) {
        final List<Donante> colaboradoresFromFirestore = <Donante>[];
        for (final DocumentSnapshot<Map<String, dynamic>> doc
            in donantes.docs) {
          colaboradoresFromFirestore
              .add(_donante.fromDocumentSnapshot(doc: doc));
        }
        return colaboradoresFromFirestore;
      });
    } catch (e) {
      rethrow;
    }
  }
}
