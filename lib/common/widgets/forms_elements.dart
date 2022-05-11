import 'package:flutter/material.dart';
import 'package:suenomotora_app/common/widgets/alert_dialog_confirmar_update_delete.dart';
import 'package:suenomotora_app/common/widgets/snackbar_resultado_operacion_crud.dart';

import '../../utils/iconos_string_util.dart';

class FormsElements extends StatelessWidget {
  final String _nombre = 'Nombre de Usuario';
  final String? _dropDownValue = 'volar';
  final List _poderes = ['volar', 'rayos x', 'super aliento', 'super fuerza'];
  final TextEditingController _inputFieldDateController =
      TextEditingController();

  FormsElements({Key? key}) : super(key: key);

  static Widget createInput(String hintText, String? labelText,
      [String icon = '']) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            icon: getIcon(icon),
            //hintText: hintText,
            labelText: labelText),
      ),
    );
  }

  static Widget boxImput(String hintText, String? labelText,
      [String icon = '']) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLength: 500,
        maxLines: 8,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            icon: getIcon(icon),
            hintText: hintText,
            labelText: labelText),
      ),
    );
  }

  static Widget btnAgregarFoto(context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add_a_photo,
            color: Colors.green,
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: ElevatedButton(
              child: const Text('Agregar Foto'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  static Widget btnsAceptarCancelar(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 20),
          child: SizedBox(
            width: 90,
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.green,
                  side: const BorderSide(
                      color: Colors.green,
                      style: BorderStyle.solid,
                      width: 1.5),
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar',
                    style: TextStyle(color: Colors.green))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: SizedBox(
            width: 90,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.green,
                  ),
                ),
                onPressed: () => {
                      Navigator.of(context).pop(),
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialogConfirmarUpdateAndDelete(
                                'crear',
                                () => ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBarRespuestaOperacionCRUD(
                                            '¡Registro creado exitosamente!')
                                        .build(context)));
                          })
                    },
                child: const Text(
                  'Aceptar',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ),
      ],
    );
  }

  static Widget btnsDetallesDesktopTablet(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 2,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.green,
                ),
              ),
              onPressed: () => {
                    Navigator.of(context).pop(),
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialogConfirmarUpdateAndDelete(
                              'actualizar',
                              () => ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBarRespuestaOperacionCRUD(
                                          'Registro actualizado')
                                      .build(context)));
                        })
                  },
              child: const Text('Actualizar')),
        ),
        Flexible(
          flex: 2,
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.red,
                ),
              ),
              onPressed: () => {
                    Navigator.of(context).pop(),
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialogConfirmarUpdateAndDelete(
                              'eliminar',
                              () => ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBarRespuestaOperacionCRUD(
                                          'Registro eliminado')
                                      .build(context)));
                        })
                  },
              child: const Text('Eliminar')),
        ),
        Flexible(
          flex: 2,
          child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                side: const BorderSide(
                    color: Colors.green, style: BorderStyle.solid, width: 1.5),
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancelar')),
        ),
      ],
    );
  }

  static Widget btnsDetallesDesktopTabletUbicacion(context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, bottom: 5.0),
      child: ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('cerrar')),
    );
  }

  static Widget btnsDetallesMovil(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () => {
                Navigator.of(context).pop(),
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialogConfirmarUpdateAndDelete(
                          'actualizar',
                          () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBarRespuestaOperacionCRUD(
                                      'Registro actualizado')
                                  .build(context)));
                    })
              },
              icon: const Icon(Icons.edit, color: Colors.green),
            ),
            IconButton(
              onPressed: () => {
                Navigator.of(context).pop(),
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialogConfirmarUpdateAndDelete(
                          'eliminar',
                          () => ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBarRespuestaOperacionCRUD(
                                      'Registro eliminado')
                                  .build(context)));
                    })
              },
              icon: const Icon(Icons.delete, color: Colors.red),
            ),
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.cancel, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  static Widget crearEmail() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            icon: const Icon(Icons.mail),
            suffixIcon: const Icon(Icons.alternate_email),
            hintText: 'Email',
            labelText: 'Email'),
        onChanged: (valor) {},
      ),
    );
  }

  Widget crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          icon: const Icon(Icons.lock_open),
          suffixIcon: const Icon(Icons.password_sharp),
          helperText: 'Solo el nombre',
          counter: Text('Letras ${_nombre.length} '),
          hintText: 'Password',
          labelText: 'Password'),
      onChanged: (valor) {},
    );
  }

  crearDatePicker(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          icon: const Icon(Icons.calendar_today),
          suffixIcon: const Icon(Icons.perm_contact_calendar),
          counter: Text('Letras ${_nombre.length} '),
          hintText: 'Fecha de nacimiento',
          labelText: 'Fecha de nacimiento'),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
        selectDate(context);
      },
    );
  }

  selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2018),
      lastDate: DateTime(2025),
      locale: const Locale('es', 'ES'),
    );

    if (picked != null) {}
  }

  List<DropdownMenuItem<String>> getOpcionesDropDow() {
    var list =
        _poderes.map<DropdownMenuItem<String>>((value) => DropdownMenuItem(
              child: Text(value!),
              value: value,
              alignment: Alignment.centerRight,
            ));

    return list.toList();
  }

  Widget crearDropDown() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.select_all),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: DropdownButton<String>(
              isExpanded: true,
              focusColor: Colors.white,
              autofocus: false,
              alignment: Alignment.topRight,
              items: getOpcionesDropDow(),
              hint: const Text('Seleccione un poder'),
              elevation: 16,
              value: _dropDownValue,
              onChanged: (opt) {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
