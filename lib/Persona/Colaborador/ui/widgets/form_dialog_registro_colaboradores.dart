import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/Persona/Colaborador/model/colaborador.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';

import '../../../../utils/iconos_string_util.dart';

class FormDialogRegistroColaboradores extends StatefulWidget {
  const FormDialogRegistroColaboradores({Key? key}) : super(key: key);

  @override
  State<FormDialogRegistroColaboradores> createState() =>
      _FormDialogRegistroColaboradoresState();
}

class _FormDialogRegistroColaboradoresState
    extends State<FormDialogRegistroColaboradores> {
  final nombreController = TextEditingController();
  final apellidoController = TextEditingController();
  final telefonoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: const Text('Registro de colaborador'),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nombreController,
                  validator: (value) =>
                      value!.isEmpty ? ' Descripción requerida' : '',
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      icon: getIcon('person_outline'),
                      //hintText: hintText,
                      labelText: 'Nombre'),
                  onChanged: (value) {
                    setState(() {
                      nombreController.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: apellidoController,
                  validator: (value) =>
                      value!.isEmpty ? ' Descripción requerida' : '',
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      icon: getIcon('person_outline'),
                      //hintText: hintText,
                      labelText: 'Apellido'),
                  onChanged: (value) {
                    setState(() {
                      apellidoController.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: telefonoController,
                  validator: (value) =>
                      value!.isEmpty ? ' Descripción requerida' : '',
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      icon: getIcon('telefono'),
                      //hintText: hintText,
                      labelText: 'Telefono'),
                  onChanged: (value) {
                    setState(() {
                      telefonoController.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child:
                    FormsElements.btnsGuardarCancelar(context, onPresedGuardar),
              ),
            ]),
          ),
        ]);
  }

  onPresedGuardar() {
    Colaborador colaborador = Colaborador(
      nombreController.text,
      apellidoController.text,
      telefonoController.text,
    );

    FirebaseFirestore.instance
        .collection("Colaboradores")
        .add(colaborador.toMap());
  }
}
