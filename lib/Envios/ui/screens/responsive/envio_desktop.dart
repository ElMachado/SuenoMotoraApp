import 'package:flutter/material.dart';
import 'package:suenomotora_app/Envios/model/Envio.dart';
import 'package:suenomotora_app/Envios/ui/widgets/card_envio.dart';
import 'package:suenomotora_app/Envios/ui/widgets/form_dialog_detalle_envios.dart';

import '../../../../common/widgets/floating_button.dart';
import '../../widgets/form_dialog_registro_envio.dart';

class EnviosDesktop extends StatelessWidget {
  const EnviosDesktop({Key? key}) : super(key: key);

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

    FloatingButton floButton = FloatingButton();

    final _size = MediaQuery.of(context).size.width;
    double aspectRatio = 10.0;
    print(_size);
    print(aspectRatio);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Envios'),
        ),
        body: Container(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.85, crossAxisCount: 4),
            addAutomaticKeepAlives: true,
            addRepaintBoundaries: true,
            addSemanticIndexes: true,
            itemCount: _envios.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return cardEnvios(_envios[index]);
            },
          ),
        ),
        floatingActionButton: floButton.floatingButton(
          btnAction: () =>
              FormDialogRegistroEnvio.mostrarDialogRegistroEnvio(context),
        ));
  }
}
