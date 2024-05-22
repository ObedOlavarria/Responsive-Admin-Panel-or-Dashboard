import 'package:admin/screens/dashboard/components/storage_details.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/header.dart';

// Pantalla del Dashboard principal
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // SafeArea asegura que el contenido no se solape con áreas inseguras
      child: SingleChildScrollView(
        // Permite que la pantalla sea desplazable si el contenido es extenso
        primary: false,
        padding: EdgeInsets.all(defaultPadding), // Añade padding alrededor del contenido
        child: Column(
          // Disposición vertical de los elementos
          children: [
            Header(), // Componente de cabecera
            SizedBox(height: defaultPadding), // Espacio entre la cabecera y la siguiente fila
            Row(
              // Disposición horizontal de los elementos
              crossAxisAlignment: CrossAxisAlignment.start, // Alinea los hijos al inicio del eje vertical
              children: [
                Expanded(
                  // El primer hijo ocupa 5 partes del espacio disponible
                  flex: 5,
                  child: Column(
                    // Se pueden añadir más widgets en esta columna
                    children: [],
                  ),
                ),
                Expanded(
                  // El segundo hijo ocupa 2 partes del espacio disponible
                  flex: 2,
                  child: StorageDetails(), // Componente que muestra detalles de almacenamiento
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
