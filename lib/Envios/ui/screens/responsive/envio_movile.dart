import 'package:flutter/material.dart';
import 'package:suenomotora_app/Envios/ui/widgets/form_dialog_registro_envio.dart';
import 'package:suenomotora_app/common/repository/get_data.dart';

import '../../../../common/widgets/floating_button.dart';
import '../../../model/envio.dart';
import '../../widgets/card_envio.dart';

class EnviosMovil extends StatelessWidget {
  const EnviosMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FloatingButton floButton = FloatingButton();

    GetData envioStream = GetData();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Envios'),
        ),
        body: StreamBuilder<List<Envio>>(
            stream: envioStream.enviosStream(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Envio>> snapshot) {
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
                      Envio currentSolicitud = snapshot.data![index];
                      return FittedBox(
                          fit: BoxFit.fill,
                          child: CardEnvios(envio: currentSolicitud));
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
                FormDialogRegistroEnvio.mostrarDialogRegistroEnvio(context)));
  }
}
