// Este es un test básico de widgets en Flutter.
//
// Para realizar una interacción con un widget en tu test, usa WidgetTester
// del paquete flutter_test. Por ejemplo, puedes enviar gestos de tap y scroll.
// También puedes usar WidgetTester para encontrar widgets hijos en el árbol de widgets,
// leer texto, y verificar que los valores de las propiedades de los widgets sean correctos.

import 'package:admin/main.dart'; // Importa el punto de entrada de la aplicación
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Define una prueba de widgets
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construye la aplicación y dispara un frame.
    await tester.pumpWidget(MyApp());

    // Verifica que nuestro contador empieza en 0.
    expect(find.text('0'), findsOneWidget); // Busca el texto '0' en el árbol de widgets
    expect(find.text('1'), findsNothing); // Verifica que el texto '1' no está presente

    // Toca el icono '+' y dispara un frame.
    await tester.tap(find.byIcon(Icons.add)); // Simula un tap en el icono '+'
    await tester.pump(); // Redibuja el frame después de la interacción

    // Verifica que nuestro contador ha incrementado.
    expect(find.text('0'), findsNothing); // Verifica que el texto '0' ya no está presente
    expect(find.text('1'), findsOneWidget); // Busca el texto '1' en el árbol de widgets
  });
}
