import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogRegistroUbicacion extends StatefulWidget {
  const FormDialogRegistroUbicacion({Key? key}) : super(key: key);

  static formDialogRegistroUbicacion(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Registro de ubicación'),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Líder:', style: TextStyle(fontSize: 20)),
                      FormsElements.createInput(
                          'Nombre del Líder', 'Nombre del Líder'),
                      const Text('Donante:', style: TextStyle(fontSize: 20)),
                      FormsElements.createInput(
                          'Nombre del Donante', 'Nombre del Donante'),
                      const Text('Últimos envíos',
                          style: TextStyle(fontSize: 20)),
                      FormsElements.boxImput(
                          'Contenido de los envíos', 'Contenido de los envíos'),
                      const Text('Agregar fotos ',
                          style: TextStyle(fontSize: 20)),
                      FormsElements.btnAgregarFoto(context),
                      FormsElements.btnsGuardarCancelar(context)
                    ]),
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
