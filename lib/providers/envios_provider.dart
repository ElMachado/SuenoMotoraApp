import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:suenomotora_app/Envios/model/envio.dart';

class EnviosProvider with ChangeNotifier {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Stream<List<Envio>>? _enviosStream;

  EnviosProvider() {
    _fetchEnviosStream();
  }

  Stream<List<Envio>> get enviosStream {
    return _enviosStream ?? const Stream.empty();
  }

  void _fetchEnviosStream() {
    try {
      _enviosStream = _db.collection("Envios").snapshots().map((snapshot) {
        return snapshot.docs.map((doc) {
          return Envio.fromFirestore(doc);
        }).toList();
      });
      notifyListeners();
    } catch (e) {
      // In a real app, you'd handle this error more gracefully
      print(e);
      _enviosStream = Stream.error(e);
      notifyListeners();
    }
  }
}
