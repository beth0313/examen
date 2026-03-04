
import 'dart:io';
import 'agregarListar.dart';

void main() {
  List<Map<String, dynamic>> estudiantes = [];
  bool salir = false;

  while (!salir) {
    print('\n--- MENU CRUD ESTUDIANTES ---');
    print('1. Agregar | 2. Listar | 3. Actualizar | 4. Eliminar | 5. Estadísticas | 6. Salir');
    stdout.write('Opción: ');
    String? op = stdin.readLineSync();

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

