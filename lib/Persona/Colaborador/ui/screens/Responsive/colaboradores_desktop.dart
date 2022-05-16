import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/model/colaborador.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/colaborador_card.dart';
import 'package:suenomotora_app/Persona/Colaborador/ui/widgets/form_dialog_registro_colaboradores.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/form_diaglog_detalles_colaboradores.dart';

class ColaboradoresDesktop extends StatelessWidget {
  const ColaboradoresDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _db = FirebaseFirestore.instance;
    FloatingButton floButton = FloatingButton();
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    print(_width);
    int _crossAxisCount = 3;

    Future getData() async {
      await _db.collection("Colaboradores").get().then((colaboradores) {
        for (var doc in colaboradores.docs) {
          print("${doc.id} => ${doc.data()}");
        }
      });
    }

    Stream<List<Colaborador>> colaboradorStream() {
      try {
        return _db.collection("Colaboradores").snapshots().map((colaboradores) {
          final List<Colaborador> colaboradoresFromFirestore = <Colaborador>[];
          for (final DocumentSnapshot<Map<String, dynamic>> doc
              in colaboradores.docs) {
            colaboradoresFromFirestore
                .add(Colaborador.fromDocumentSnapshot(doc: doc));
          }
          return colaboradoresFromFirestore;
        });
      } catch (e) {
        rethrow;
      }
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Colaboradores'),
        ),
        body: StreamBuilder<List<Colaborador>>(
          stream: colaboradorStream(),
          builder: (BuildContext context,
              AsyncSnapshot<List<Colaborador>> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return Container(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: GridView.builder(
                      itemCount: 2,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: _crossAxisCount,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 2.5),
                      itemBuilder: (context, index) {
                        Colaborador currentColaborador = snapshot.data![index];
                        return CardColaborador(
                            currentColaborador.nombre,
                            currentColaborador.apellido,
                            currentColaborador.telefono,
                            () => FormDialogDetallesColaborador
                                .formDialogDetallesColaborador(context));
                      }));
            } else {
              return const Center(
                child: Text('Un error a ocurrido'),
              );
            }
          },
        ),
        floatingActionButton: floButton.floatingButton(btnAction: () {
          getData();
          FormDialogRegistroColaboradores.formDialogRegistroColaboradores(
              context);
        }));
  }
}
