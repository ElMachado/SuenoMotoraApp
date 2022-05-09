import 'package:flutter/material.dart';

import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogDetallesColaborador extends StatefulWidget {
  const FormDialogDetallesColaborador({Key? key}) : super(key: key);

  static _responsiveButtons(context) {
    if (MediaQuery.of(context).size.width <= 600) {
      return FormsElements.btnsDetallesMovil(context);
    } else {
      return FormsElements.btnsDetallesDesktopTablet(context);
    }
  }

  static formDialogDetallesColaborador(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      useSafeArea: true,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Detalles de colaborador'),
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                FormsElements.createInput('Nombre', 'nombre', 'person_outline'),
                FormsElements.createInput('Telefono', 'Telefono', 'telefono'),
                FormsElements.createInput(
                    'Correo electronico', 'Correo electronico', 'email'),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: _responsiveButtons(context),
                ),
              ]),
            ),
          ],
        );
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
