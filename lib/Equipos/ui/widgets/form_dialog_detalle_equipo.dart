import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

import '../../../common/widgets/image_getter.dart';

class FormDialogDetalleEquipos extends StatefulWidget {
  const FormDialogDetalleEquipos({Key? key}) : super(key: key);
  static responsiveButtons(context) {
    if (MediaQuery.of(context).size.width <= 600) {
      return FormsElements.btnsDetallesMovil(context);
    } else {
      return FormsElements.btnsDetallesDesktopTablet(context);
    }
  }

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(title: const Text('Detalle de Equipo'), children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FormsElements.createInput('Procesador', 'Procesador', 'processor'),
          FormsElements.createInput('RAM', 'RAM', 'memory'),
          FormsElements.createInput('Disco Duro', 'Disco Duro', 'storage'),
          FormsElements.boxImput(
              'Observaciones', 'observaciones', 'observaciones'),
          (kIsWeb || Platform.isLinux || Platform.isMacOS || Platform.isWindows)
              ? Container()
              : const ImageGetter(
                  buttonText: 'Actualizar foto',
                ),
          responsiveButtons(context)
        ]),
      ),
    ]);
  }
}
