class Envio {
  String nombreEscuela;
  String responsable;
  String direccionEnvio;
  String numeroTelefono;
  String contenidoEnvio;
  Function btnAction;

  Envio(
    this.nombreEscuela,
    this.responsable,
    this.direccionEnvio,
    this.numeroTelefono,
    this.contenidoEnvio,
    this.btnAction,
  ) {
    nombreEscuela = nombreEscuela;
    responsable = responsable;
    direccionEnvio = direccionEnvio;
    numeroTelefono = numeroTelefono;
    contenidoEnvio = contenidoEnvio;
    btnAction = btnAction;
  }
}
