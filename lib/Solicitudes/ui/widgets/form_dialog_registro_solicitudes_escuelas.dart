import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/forms_elements.dart';
import '../../../../utils/iconos_string_util.dart';
import '../../model/solicitud_escuela.dart';

class FormDialogRegistroSolicitudEscuela extends StatefulWidget {
  const FormDialogRegistroSolicitudEscuela({Key? key}) : super(key: key);

  @override
  State<FormDialogRegistroSolicitudEscuela> createState() =>
      _FormDialogRegistroSolicitudEscuela();
}

class _FormDialogRegistroSolicitudEscuela
    extends State<FormDialogRegistroSolicitudEscuela> {
  final direccionController = TextEditingController();
  final nombreEscuelaController = TextEditingController();
  final responsableController = TextEditingController();
  final solicitudController = TextEditingController();
  final telefonoController = TextEditingController();

  onPresedGuardar() {
    SolicitudEscuelas donante = SolicitudEscuelas(
        nombreEscuelaController.text,
        responsableController.text,
        telefonoController.text,
        direccionController.text,
        solicitudController.text);

    FirebaseFirestore.instance.collection("Solicitudes").add(donante.toMap());
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
        title: const Text('Registro de Solicitud de escuelas'),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: nombreEscuelaController,
                  validator: (value) =>
                      value!.isEmpty ? ' Descripción requerida' : '',
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      icon: getIcon('escuela'),
                      //hintText: hintText,
                      labelText: 'Nombre de la escuela'),
                  onChanged: (value) {
                    setState(() {
                      nombreEscuelaController.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: responsableController,
                  validator: (value) =>
                      value!.isEmpty ? ' Descripción requerida' : '',
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      icon: getIcon('person_outline'),
                      //hintText: hintText,
                      labelText: 'Nombre responsable'),
                  onChanged: (value) {
                    setState(() {
                      responsableController.text;
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
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: direccionController,
                  validator: (value) =>
                      value!.isEmpty ? ' Descripción requerida' : '',
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      icon: getIcon('direccion'),
                      //hintText: hintText,
                      labelText: 'Direccion'),
                  onChanged: (value) {
                    setState(() {
                      direccionController.text;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: solicitudController,
                  validator: (value) =>
                      value!.isEmpty ? ' Descripción requerida' : '',
                  textCapitalization: TextCapitalization.sentences,
                  minLines: 8,
                  maxLines: 8,
                  smartDashesType: SmartDashesType.enabled,
                  decoration: InputDecoration(
                      constraints: const BoxConstraints(
                        maxHeight: 500,
                        maxWidth: 400,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      icon: getIcon('observaciones'),
                      //hintText: hintText,
                      labelText: 'solicitud'),
                  onChanged: (value) {
                    setState(() {
                      solicitudController.text;
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
}
