import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'components/side_menu.dart';

// Esta clase define la pantalla principal de la aplicación de administración.
class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold es la estructura básica de la pantalla que proporciona la funcionalidad de diseño.
      drawer: SideMenu(), // Menú lateral (drawer) de la aplicación.
      body: SafeArea(
        // SafeArea asegura que el contenido no se solape con áreas inseguras como muescas y bordes de pantalla.
        child: Row(
          // Row organiza sus hijos en una disposición horizontal.
          crossAxisAlignment: CrossAxisAlignment.start, // Alinea los hijos al inicio del eje vertical.
          children: [
            Expanded(
              // Expanded permite que el widget hijo ocupe el espacio disponible en el eje horizontal.
              child: SideMenu(), // Incluye el menú lateral dentro de la fila.
            ),
            Expanded(
              // Este Expanded ocupa 5 veces más espacio que el primer hijo debido al flex de 5.
              flex: 5,
              child: DashboardScreen(), // Pantalla principal del dashboard de la aplicación.
            ),
          ],
        ),
      ),
    );
  }
}
