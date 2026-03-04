void calcularPromedioGeneral(List<Map<String, dynamic>> estudiantes) {
  if (estudiantes.isEmpty) {
    print("No hay estudiantes.");
    return;
  }

  double suma = 0;
  var mejor = estudiantes[0];
  var peor = estudiantes[0];

  for (var e in estudiantes) {
    suma += e["promedio"];

    if (e["promedio"] > mejor["promedio"]) mejor = e;
    if (e["promedio"] < peor["promedio"]) peor = e;
  }

  double promedioGeneral = suma / estudiantes.length;

  print("Cantidad: ${estudiantes.length}");
  print("Promedio general: ${promedioGeneral.toStringAsFixed(2)}");
  print("Mejor: ${mejor["nombre"]}");
  print("Peor: ${peor["nombre"]}");
}