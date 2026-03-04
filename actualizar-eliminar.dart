import 'dart:io';

void eliminarEstudiante(List<Map<String, dynamic>> estudiantes) {
  stdout.write("Índice a eliminar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? "");

  if (indice == null || indice < 0 || indice >= estudiantes.length) {
    print("Índice inválido.");
    return;
  }

  estudiantes.removeAt(indice);
  print("Estudiante eliminado.");
}

void actualizarEstudiante(List<Map<String, dynamic>> estudiantes) {
  stdout.write("Índice a actualizar: ");
  int? indice = int.tryParse(stdin.readLineSync() ?? "");

  if (indice == null || indice < 0 || indice >= estudiantes.length) {
    print("Índice inválido.");
    return;
  }

  var estudiante = estudiantes[indice];

  stdout.write("Nuevo nombre (${estudiante["nombre"]}): ");
  String? nombre = stdin.readLineSync();
  if (nombre != null && nombre.isNotEmpty) {
    estudiante["nombre"] = nombre;
  }

  actualizarNota(estudiante, "nota1");
  actualizarNota(estudiante, "nota2");
  actualizarNota(estudiante, "nota3");

  estudiante["promedio"] =
      (estudiante["nota1"] + estudiante["nota2"] + estudiante["nota3"]) / 3;

  print("Estudiante actualizado.");
}

void actualizarNota(Map<String, dynamic> estudiante, String s) {
  stdout.write("Nueva $s: ");
  double? nota = double.tryParse(stdin.readLineSync() ?? "");
  if (nota != null && nota >= 0 && nota <= 10) {
    estudiante[s] = nota;
  } else {
    print("Nota inválida.");
  }
}