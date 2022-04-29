import 'package:flutter/material.dart';
import 'package:suenomotora_app/Envios/model/envio.dart';
import 'package:suenomotora_app/Envios/ui/widgets/card_envio.dart';
import 'package:suenomotora_app/Envios/ui/widgets/form_dialog_detalle_envios.dart';
import 'package:suenomotora_app/Envios/ui/widgets/form_dialog_registro_envio.dart';

import '../../../../common/widgets/floating_button.dart';

class EnviosMovil extends StatelessWidget {
  const EnviosMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Envio> _envios = [
      Envio(
          'Institución educativa técnico industrial nueva esperanza',
          'Jesus david  Arroyo Machado ',
          'calle 32#14-38 vereda la esperanza',
          '3105124349 - 3105124349',
          '5 libros 3 computadores 4 bicicletas',
          () => const FormDialogDetalleEnvio().formDialogDetalleEnvio(context)),
      Envio(
          'Institución educativa técnico industrial nueva esperanza',
          'Jesus david  Arroyo Machado ',
          'calle 32#14-38 vereda la esperanza',
          '3105124349 - 3105124349',
          '5 libros 3 computadores 4 bicicletas',
          () => const FormDialogDetalleEnvio().formDialogDetalleEnvio(context)),
      Envio(
          'Institución educativa técnico industrial nueva esperanza',
          'Jesus david  Arroyo Machado ',
          'calle 32#14-38 vereda la esperanza',
          '3105124349 - 3105124349',
          '5 libros 3 computadores 4 bicicletas',
          () => const FormDialogDetalleEnvio().formDialogDetalleEnvio(context)),
      Envio(
          'Institución educativa técnico industrial nueva esperanza',
          'Jesus david  Arroyo Machado ',
          'calle 32#14-38 vereda la esperanza',
          '3105124349 - 3105124349',
          '5 libros 3 computadores 4 bicicletas',
          () => const FormDialogDetalleEnvio().formDialogDetalleEnvio(context)),
      Envio(
          'Institución educativa técnico industrial nueva esperanza',
          'Jesus david  Arroyo Machado ',
          'calle 32#14-38 vereda la esperanza',
          '3105124349 - 3105124349',
          '5 libros 3 computadores 4 bicicletas',
          () => const FormDialogDetalleEnvio().formDialogDetalleEnvio(context)),
    ];
    Widget buildListEnvios() {
      return Column(
          children: _envios.map((envio) => cardEnvios(envio)).toList());
    }

    FloatingButton floButton = FloatingButton();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Envios'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: ListView(
            children: [buildListEnvios()],
          ),
        ),
        floatingActionButton: floButton.floatingButton(
            btnAction: () =>
                FormDialogRegistroEnvio.mostrarDialogRegistroEnvio(context)));
  }
}
