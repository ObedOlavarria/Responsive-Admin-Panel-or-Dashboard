import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,  // Usa la llave del controlador del menú para el scaffold.
      drawer: SideMenu(),  // Define el menú lateral.
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Queremos este menú lateral solo para pantallas grandes.
            if (Responsive.isDesktop(context))
              Expanded(
                // flex por defecto = 1
                // y ocupa 1/6 parte de la pantalla.
                child: SideMenu(),
              ),
            Expanded(
              // Ocupa 5/6 partes de la pantalla.
              flex: 5,
              child: DashboardScreen(),  // Define la pantalla del dashboard.
            ),
          ],
        ),
      ),
    );
  }
}
