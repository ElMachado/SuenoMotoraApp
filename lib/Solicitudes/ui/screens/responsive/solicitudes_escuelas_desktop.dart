import 'package:flutter/material.dart';
import 'package:suenomotora_app/Solicitudes/model/solicitud_escuela.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/form_dialog_registro_solicitudes_escuelas.dart';
import 'package:suenomotora_app/Solicitudes/ui/widgets/forms_dialog_detalle_solicitudes_escuelas.dart';
import 'package:suenomotora_app/common/widgets/floating_button.dart';

import '../../../../common/repository/get_data.dart';
import '../../widgets/card_solicitudes_escuelas.dart';

class SolicitudesEscuelasDesktop extends StatelessWidget {
  const SolicitudesEscuelasDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size.width;

    _buildFormDetalles(context) {
      return showDialog(
          context: context,
          builder: (context) {
            return const FormDialogDetalleSolicitudEscuela().build(context);
          });
    }

    FloatingButton floButton = FloatingButton();
    GetData donanteStream = GetData();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Solicitudes de Escuelas'),
        ),
        body: StreamBuilder<List<SolicitudEscuelas>>(
          stream: donanteStream.solicitudEscuelasStream(),
          builder: (context, AsyncSnapshot<List<SolicitudEscuelas>> snapshot) {
            if (snapshot.hasError) {
              return Text('Error 1: ${snapshot.error}');
            }
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasData) {
              return GridView.builder(
                  itemCount: snapshot.data!.toList().length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1,
                      childAspectRatio: 1007 * 2.8 / 1920),
                  itemBuilder: (context, index) {
                    SolicitudEscuelas currentSolicitud = snapshot.data![index];
                    return FittedBox(
                      fit: BoxFit.fill,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CardSolicitudesEscuelas(
                          currentSolicitud.nombreEscuela,
                          currentSolicitud.nombreResponsable,
                          currentSolicitud.telefonoResponsable,
                          currentSolicitud.direccionEscuela,
                          currentSolicitud.queSolicita,
                        ),
                      ),
                    );
                  });
            } else {
              return const Center(
                child: Text('2 Un error a ocurrido'),
              );
            }
          },
        ),
        floatingActionButton: floButton.floatingButton(btnAction: () {
          showDialog(
              context: context,
              builder: (context) {
                return const FormDialogRegistroSolicitudEscuela();
              });
        }));
  }
}
