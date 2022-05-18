import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogRegistroColaborador extends StatefulWidget {
  const FormDialogRegistroColaborador({Key? key}) : super(key: key);

  static formDialogRegistroColaborador(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Registro de Donante'),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      ),
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
