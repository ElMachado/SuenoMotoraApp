import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/Persona/Donante/model/donante.dart';
import 'package:suenomotora_app/Solicitudes/model/solicitud_escuela.dart';

import '../../Envios/model/envio.dart';
import '../../Equipos/model/equipos.dart';
import '../../Persona/Colaborador/model/colaborador.dart';

class GetData {
  final _db = FirebaseFirestore.instance;

  final Colaborador _colaborador = Colaborador('', '', '');
  final Donante _donante = Donante('', '', '');
  final Equipos _equipos = Equipos('', '', '', '', '');
  final SolicitudEscuelas _solicitudEscuela = SolicitudEscuelas(
    '',
    '',
    '',
    '',
    '',
  );
  final Envio _envio = Envio('', '', '', '', '');

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

  Stream<List<Equipos>> equipoStream() {
    try {
      return _db.collection("Equipos").snapshots().map((equipos) {
        final List<Equipos> colaboradoresFromFirestore = <Equipos>[];
        for (final DocumentSnapshot<Map<String, dynamic>> doc in equipos.docs) {
          colaboradoresFromFirestore
              .add(_equipos.fromDocumentSnapshot(doc: doc));
        }
        return colaboradoresFromFirestore;
      });
    } catch (e) {
      rethrow;
    }
  }

  Stream<List<SolicitudEscuelas>> solicitudEscuelasStream() {
    try {
      return _db.collection("Solicitudes").snapshots().map((equipos) {
        final List<SolicitudEscuelas> colaboradoresFromFirestore =
            <SolicitudEscuelas>[];
        for (final DocumentSnapshot<Map<String, dynamic>> doc in equipos.docs) {
          colaboradoresFromFirestore
              .add(_solicitudEscuela.fromDocumentSnapshot(doc: doc));
        }
        return colaboradoresFromFirestore;
      });
    } catch (e) {
      rethrow;
    }
  }

  Stream<List<Envio>> enviosStream() {
    try {
      return _db.collection("Envios").snapshots().map((envios) {
        final List<Envio> enviosFromFirestore = <Envio>[];
        for (final DocumentSnapshot<Map<String, dynamic>> doc in envios.docs) {
          enviosFromFirestore.add(_envio.fromDocumentSnapshot(doc: doc));
        }
        return enviosFromFirestore;
      });
    } catch (e) {
      rethrow;
    }
  }
}
