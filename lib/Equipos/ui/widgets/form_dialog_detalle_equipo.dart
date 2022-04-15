import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

class FormDialogDetalleEquipos extends StatefulWidget {
  const FormDialogDetalleEquipos({Key? key}) : super(key: key);

  static formDialogDetalleEquipos(BuildContext context) {
    FormsElements formsElements = FormsElements();

    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
            title: const Text('Registro de colaboradores'),
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  formsElements.createInput('Procesador', 'Procesador'),
                  formsElements.createInput('RAM', 'RAM'),
                  formsElements.createInput('Disco Duro', 'Disco Duro'),
                  formsElements.boxImput('Observaciones', 'observaciones'),
                  formsElements.btnAgregarFoto(),
                  formsElements.btnsformDetalles(context)
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