void agregarEstudiante(List<Map<String, dynamic>> estudiantes) {
  stdout.write("Nombre: ");
  String? nombre = stdin.readLineSync();

  if (nombre == null || nombre.trim().isEmpty) {
    print("Nombre inválido.");
    return;
  }

  stdout.write("Edad: ");
  int? edad = int.tryParse(stdin.readLineSync() ?? "");
  if (edad == null) {
    print("Edad inválida.");
    return;
  }

  double? nota1 = leerNota("Nota 1: ");
  double? nota2 = leerNota("Nota 2: ");
  double? nota3 = leerNota("Nota 3: ");
  if (nota1 == null || nota2 == null || nota3 == null) return;

  double promedio = (nota1 + nota2 + nota3) / 3;

  estudiantes.add({
    "nombre": nombre,
    "edad": edad,
    "nota1": nota1,
    "nota2": nota2,
    "nota3": nota3,
    "promedio": promedio
  });

  print("Estudiante agregado.");
}

void listarEstudiantes(List<Map<String, dynamic>> estudiantes) {
  if (estudiantes.isEmpty) {
    print("No hay estudiantes.");
    return;
  }

  for (int i = 0; i < estudiantes.length; i++) {
    var e = estudiantes[i];
    print("\nÍndice: $i");
    print("Nombre: ${e["nombre"]}");
    print("Edad: ${e["edad"]}");
    print("Promedio: ${e["promedio"].toStringAsFixed(2)}");
  }
}