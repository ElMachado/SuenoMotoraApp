import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogRegistroSolicitudEscuela extends StatefulWidget {
  const FormDialogRegistroSolicitudEscuela({Key? key}) : super(key: key);

  static formDialogRegistroSolicitudEscuela(BuildContext context) {
    FormsElements formsElements = FormsElements();

    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Registro de solicitudes de escuelas'),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  formsElements.createInput(
                      'Nombre de Escuela', 'Nombre de Escuela'),
                  formsElements.createInput('Nombre', 'Nombre del responsable'),
                  formsElements.createInput('Telefono', 'Telefono'),
                  formsElements.createInput(
                      'Correo electrónico', 'Correo electrónico'),
                  formsElements.boxImput('Solicitud', '¿Qué solicita?'),
                  formsElements.btnsAceptarCancelar(context),
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