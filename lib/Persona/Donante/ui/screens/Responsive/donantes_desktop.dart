import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Donante/model/donante.dart';
import 'package:suenomotora_app/Persona/Donante/ui/widgets/donante_card.dart';
import 'package:suenomotora_app/Persona/Donante/ui/widgets/form_diaglog_detalles_donantes.dart';
import 'package:suenomotora_app/common/repository/get_data.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../widgets/form_dialog_registro_donante.dart';

class DonatesDesktop extends StatelessWidget {
  const DonatesDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _db = FirebaseFirestore.instance;
    FloatingButton floButton = FloatingButton();
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;
    print(_width);
    print(_height);
    int _crossAxisCount = 0;

    if (_width > 1624) {
      _crossAxisCount = 4;
    } else {
      if (_width < 1215) {
        _crossAxisCount = 2;
      } else {
        _crossAxisCount = 3;
      }
    }

    GetData donanteStream = GetData();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Donantes'),
        ),
        body: StreamBuilder<List<Donante>>(
          stream: donanteStream.donanteStream(),
          builder: (context, AsyncSnapshot<List<Donante>> snapshot) {
            if (snapshot.hasError) {
              return Text('Error 1: ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return GridView.builder(
                  itemCount: snapshot.data!.toList().length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1007 * 3.5 / 1920,
                      crossAxisCount: _crossAxisCount),
                  itemBuilder: (context, index) {
                    Donante currentDonante = snapshot.data![index];
                    return FittedBox(
                      fit: BoxFit.fill,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CardDonante(
                            currentDonante.nombre,
                            currentDonante.apellido,
                            currentDonante.telefono,
                            '/profiles/profile2.png',
                            () => FormDialogDetallesDonantes
                                .formDialogDetallesDonantes(context)),
                      ),
                    );
                  });
            } else {
              return const Center(
                child: Text('2 Un error a ocurrido'),
              );
            }
          },
        ),
        floatingActionButton: floButton.floatingButton(btnAction: () {
          showDialog(
              context: context,
              builder: (context) {
                return const FormDialogRegistroDonantes();
              });
        }));
  }
}
