import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';
import 'package:suenomotora_app/common/widgets/image_getter.dart';

class FormDialogRegistroEquipos extends StatefulWidget {
  const FormDialogRegistroEquipos({Key? key}) : super(key: key);

  static formDialogRegistroEquipos(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(title: const Text('Registro de Equipo'), children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FormsElements.createInput(
                        'Procesador', 'Procesador', 'processor'),
                    FormsElements.createInput('RAM', 'RAM', 'memory'),
                    FormsElements.createInput(
                        'Disco Duro', 'Disco Duro', 'storage'),
                    FormsElements.boxImput(
                        'Observaciones', 'observaciones', 'observaciones'),
                    (kIsWeb ||
                            Platform.isLinux ||
                            Platform.isMacOS ||
                            Platform.isWindows)
                        ? Container()
                        : const ImageGetter(
                            buttonText: 'Agregar una foto',
                          ),
                    FormsElements.btnsGuardarCancelar(context, () {}),
                  ]),
            ),
          ),
        ]);
      },
    );
  }

  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }
}
