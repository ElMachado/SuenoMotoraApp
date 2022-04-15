import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class FormsElements extends StatelessWidget {
  final String _nombre = 'Nombre de Usuario';
  final String _email = 'Correo electronico';
  final String _password = '***********';
  final String _fecha = '00/00/0000';
  final String? _dropDownValue = 'volar';
  final List _poderes = ['volar', 'rayos x', 'super aliento', 'super fuerza'];
  final TextEditingController _inputFieldDateController =
      TextEditingController();

  FormsElements({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [createInput('', ''), crearPassword()],
    );
  }

  Widget createInput(String hintText, String? labelText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
            icon: const Icon(Icons.account_circle),
            hintText: hintText,
            labelText: labelText),
      ),
    );
  }

  Widget boxImput(String hintText, String? labelText) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          maxLength: 500,
          maxLines: 8,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
              icon: const Icon(Icons.account_circle),
              hintText: hintText,
              labelText: labelText),
        ),
      ),
    );
  }

  Widget btnAgregarFoto() {
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

  Widget btnsAceptarCancelar(context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 90,
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Cancelar')),
          ),
          SizedBox(
            width: 90,
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Aceptar')),
          ),
        ],
      ),
    );
  }

  Widget btnsformDetalles(context) {
    return SizedBox(
      height: 100,
      width: 400,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const AutoSizeText('Actualizar')),
          ),
          SizedBox(
              width: 100,
              child: ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const AutoSizeText('Eliminar'))),
          SizedBox(
            width: 100,
            child: ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Aceptar')),
          ),
        ],
      ),
    );
  }

  Widget crearEmail() {
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
}
