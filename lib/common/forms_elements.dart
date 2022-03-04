import 'package:flutter/material.dart';

class FormsElements extends StatelessWidget {
  String _nombre = 'Nombre de Usuario';
  String _email = 'Correo electronico';
  String _password = '***********';
  String _fecha = '00/00/0000';
  String? _dropDownValue = 'volar';
  final List _poderes = ['volar', 'rayos x', 'super aliento', 'super fuerza'];
  final TextEditingController _inputFieldDateController =
      TextEditingController();

  FormsElements({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [createInput(), crearPassword()],
    );
  }

  Widget createInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            icon: const Icon(Icons.account_circle),
            suffixIcon: const Icon(Icons.accessibility),
            helperText: 'Solo el nombre',
            counter: Text('Letras ${_nombre.length} '),
            hintText: 'Nombre de la persona',
            labelText: 'Nombre'),
        onChanged: (valor) {},
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
