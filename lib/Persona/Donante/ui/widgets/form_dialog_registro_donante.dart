import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogRegistroDonante extends StatefulWidget {
  const FormDialogRegistroDonante({Key? key}) : super(key: key);

  static formDialogRegistroDonante(BuildContext context) {
    FormsElements formsElements = FormsElements();

    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Registro de Doantes'),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  formsElements.createInput('Nombre', 'Nombre'),
                  formsElements.createInput('Telefono', 'Telefono'),
                  formsElements.createInput(
                      'Correo electronico', 'Correo electronico'),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Cancelar')),
                        ElevatedButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: const Text('Ok')),
                      ],
                    ),
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
