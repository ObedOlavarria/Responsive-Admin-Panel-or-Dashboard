import 'package:admin/responsive.dart';
import 'package:admin/screens/dashboard/components/my_fields.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'components/header.dart';

import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario
    return SafeArea( // Crea un área segura para evitar el área de recorte
      child: SingleChildScrollView( // Crea un widget desplazable verticalmente
        primary: false, // Indica que este widget no es el widget secundario principal
        padding: EdgeInsets.all(defaultPadding), // Establece el relleno en todos los lados
        child: Column(
          children: [ // Lista de widgets hijos de la columna
            Header(), // Muestra el encabezado de la página
            SizedBox(height: defaultPadding), // Espacio entre el encabezado y los elementos siguientes
            Row( // Crea una fila horizontal de widgets
              crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos de la fila en la parte superior
              children: [ // Lista de widgets hijos de la fila
                Expanded( // Expande el widget para llenar el espacio disponible
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(), // Muestra los archivos del usuario
                      SizedBox(height: defaultPadding),
                      RecentFiles(), 
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding), // Espacio adicional en dispositivos móviles
                      if (Responsive.isMobile(context)) StorageDetails(), // Muestra detalles de almacenamiento en dispositivos móviles
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context)) // Condición para no mostrar un widget en dispositivos móviles
                  SizedBox(width: defaultPadding), // Espacio entre los elementos en dispositivos de escritorio
                if (!Responsive.isMobile(context)) // Condición para no mostrar un widget en dispositivos móviles
                  Expanded( // Expande el widget para llenar el espacio disponible
                    flex: 2,
                    child: StorageDetails(), // Muestra detalles de almacenamiento en dispositivos de escritorio
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
