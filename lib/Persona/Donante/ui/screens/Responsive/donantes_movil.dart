import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Donante/model/donante.dart';
import 'package:suenomotora_app/Persona/Donante/ui/widgets/donante_card.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../../../../common/repository/get_data.dart';
import '../../widgets/form_diaglog_detalles_donantes.dart';
import '../../widgets/form_dialog_registro_donante.dart';

class DonatesMovil extends StatelessWidget {
  DonatesMovil({Key? key}) : super(key: key);
  GetData donanteStream = GetData();

  @override
  Widget build(BuildContext context) {
    FloatingButton floButton = FloatingButton();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Donantes'),
        ),
        body: StreamBuilder<List<Donante>>(
            stream: donanteStream.donanteStream(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Donante>> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                return Container(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: snapshot.data!.toList().length,
                    itemBuilder: (context, index) {
                      Donante currentDonante = snapshot.data![index];
                      return FittedBox(
                        fit: BoxFit.fill,
                        child: CardDonante(
                            currentDonante.nombre,
                            currentDonante.apellido,
                            currentDonante.telefono,
                            '/profiles/profile2.png',
                            () => FormDialogDetallesDonantes
                                .formDialogDetallesDonantes(context)),
                      );
                    },
                  ),
                );
              } else {
                return const Center(
                  child: Text('Un error a ocurrido'),
                );
              }
            }),
        floatingActionButton: floButton.floatingButton(
            btnAction: () =>
                FormDialogRegistroColaborador.formDialogRegistroColaborador(
                    context)));
  }
}
