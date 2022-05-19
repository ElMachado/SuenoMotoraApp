import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Donante/ui/widgets/donante_card.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../../../../common/repository/get_data.dart';
import '../../../model/donante.dart';
import '../../widgets/form_diaglog_detalles_donantes.dart';
import '../../widgets/form_dialog_registro_donante.dart';

class DonantesTablet extends StatelessWidget {
  const DonantesTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingButton floButton = FloatingButton();
    GetData donanteStream = GetData();
    var _width = MediaQuery.of(context).size.width;
    print(_width);

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
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: GridView.builder(
                  itemCount: snapshot.data!.toList().length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      childAspectRatio: 1007 * 2.8 / 1920),
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
                  }),
            );
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
      }),
    );
  }
}
