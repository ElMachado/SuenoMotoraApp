import 'package:flutter/material.dart';
import 'package:suenomotora_app/Envios/ui/widgets/card_envio.dart';
import 'package:suenomotora_app/Envios/ui/widgets/form_dialog_registro_envio.dart';
import 'package:suenomotora_app/common/repository/get_data.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../../model/envio.dart';

class EnviosTablet extends StatelessWidget {
  const EnviosTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingButton floButton = FloatingButton();

    ///final _size = MediaQuery.of(context).size.width;
    //  print('aspect Ratio: $aspectRatio');
    //print('ancho: $_size');
    GetData envioStream = GetData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envios'),
      ),
      body: StreamBuilder<List<Envio>>(
        stream: envioStream.enviosStream(),
        builder: (context, AsyncSnapshot<List<Envio>> snapshot) {
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
                    Envio currentSolicitud = snapshot.data![index];
                    return FittedBox(
                      fit: BoxFit.fill,
                      child: CardEnvios(envio: currentSolicitud),
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
      floatingActionButton: floButton.floatingButton(
          btnAction: () =>
              FormDialogRegistroEnvio.mostrarDialogRegistroEnvio(context)),
    );
  }
}
