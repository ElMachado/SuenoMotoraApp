import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogRegistroSolicitudEscuela extends StatefulWidget {
  const FormDialogRegistroSolicitudEscuela({Key? key}) : super(key: key);

  static formDialogRegistroSolicitudEscuela(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Registro de solicitud de escuela'),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  FormsElements.createInput(
                      'Nombre de Escuela', 'Nombre de Escuela', 'escuela'),
                  FormsElements.createInput(
                      'Nombre', 'Nombre del responsable', 'person_outline'),
                  FormsElements.createInput('Telefono', 'Telefono', 'telefono'),
                  FormsElements.createInput(
                      'Correo electrónico', 'Correo electrónico', 'email'),
                  FormsElements.boxImput(
                      'Solicitud', '¿Qué solicita?', 'solicitud'),
                  FormsElements.btnsGuardarCancelar(context),
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
