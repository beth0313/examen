import 'estudiante_manager.dart';
import 'dart:io';

void main() {
  List<Map<String, dynamic>> estudiantes = [];
  bool salir = false;

  while (!salir) {
    print('\n--- MENU CRUD ESTUDIANTES ---');
    print('1. Agregar | 2. Listar | 3. Actualizar | 4. Eliminar | 5. Estadísticas | 6. Salir');
    stdout.write('Opción: ');
    String? op = stdin.readLineSync();

    switch (op) {
      case '1': agregarEstudiante(estudiantes); break;
      case '2': /* llamar a listar */ break;
      // ... resto de casos
      case '6': salir = true; break;
      default: print('Opción inválida');
    }
  }
}