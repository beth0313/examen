
import 'dart:io';
import 'agregarListar.dart';
import 'actualizar-eliminar.dart';
import 'promedios.dart';

void main() {
  List<Map<String, dynamic>> estudiantes = [];
  bool salir = false;

  while (!salir) {
    print("\n===== SISTEMA DE ESTUDIANTES =====");
    print("1. Agregar estudiante");
    print("2. Listar estudiantes");
    print("3. Actualizar estudiante");
    print("4. Eliminar estudiante");
    print("5. Calcular promedio general");
    print("6. Salir");
    stdout.write('Opción: ');
    String? op = stdin.readLineSync();

    var opcion = op?.trim();
    switch (opcion) {
      case "1":
        agregarEstudiante(estudiantes);
        break;
      case "2":
        listarEstudiantes(estudiantes);
        break;
      case "3":
        actualizarEstudiante(estudiantes);
        break;
      case "4":
        eliminarEstudiante(estudiantes);
        break;
      case "5":
        calcularPromedioGeneral(estudiantes);
        break;
      case "6":
        print("Saliendo del programa...");
        return;
      default:
        print("Opción inválida.");
    }
  }
}
