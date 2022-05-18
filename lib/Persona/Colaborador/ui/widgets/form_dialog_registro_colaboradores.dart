import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogRegistroColaboradores extends StatefulWidget {
  const FormDialogRegistroColaboradores({Key? key}) : super(key: key);

  static formDialogRegistroColaboradores(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Registro de colaborador'),
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FormsElements.createInput(
                          'Nombre', 'nombre', 'person_outline'),
                      FormsElements.createInput(
                          'Telefono', 'Telefono', 'telefono'),
                      FormsElements.createInput(
                          'Correo electronico', 'Correo electronico', 'email'),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: FormsElements.btnsGuardarCancelar(context),
                      )
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
