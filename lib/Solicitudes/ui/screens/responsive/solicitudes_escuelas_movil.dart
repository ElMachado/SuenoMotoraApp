import 'package:flutter/material.dart';
import 'package:suenomotora_app/Solicitudes/model/solicitud_escuela.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/card_solicitudes_escuelas.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/form_dialog_registro_solicitudes_escuelas.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/forms_dialog_detalle_solicitudes_escuelas.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../../../common/repository/get_data.dart';

class SolicitudesEscuelasMovil extends StatelessWidget {
  const SolicitudesEscuelasMovil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _buildFormDetalles(context) {
      return showDialog(
          context: context,
          builder: (context) {
            return const FormDialogDetalleSolicitudEscuela().build(context);
          });
    }

    GetData donanteStream = GetData();

    FloatingButton floButton = FloatingButton();
    return Scaffold(
        appBar: AppBar(
          title: const Text('Solicitudes de Escuelas'),
        ),
        body: StreamBuilder<List<SolicitudEscuelas>>(
            stream: donanteStream.solicitudEscuelasStream(),
            builder: (BuildContext context,
                AsyncSnapshot<List<SolicitudEscuelas>> snapshot) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                return Container(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: snapshot.data!.toList().length,
                    itemBuilder: (context, index) {
                      SolicitudEscuelas currentSolicitud =
                          snapshot.data![index];
                      return FittedBox(
                          fit: BoxFit.fill,
                          child: CardSolicitudesEscuelas(
                              currentSolicitud.nombreEscuela,
                              currentSolicitud.nombreResponsable,
                              currentSolicitud.telefonoResponsable,
                              currentSolicitud.direccionEscuela,
                              currentSolicitud.queSolicita));
                    },
                  ),
                );
              } else {
                return const Center(
                  child: Text('Un error a ocurrido'),
                );
              }
            }),
        floatingActionButton: floButton.floatingButton(btnAction: () {
          showDialog(
              context: context,
              builder: (context) {
                return const FormDialogRegistroSolicitudEscuela();
              });
        }));
  }
}
