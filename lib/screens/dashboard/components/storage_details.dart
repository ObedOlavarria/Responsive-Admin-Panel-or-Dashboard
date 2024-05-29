import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return Container( // Contenedor que envuelve todo el widget
      padding: EdgeInsets.all(defaultPadding), // Relleno en todos los lados
      decoration: BoxDecoration( // Decoración del contenedor
        color: secondaryColor, // Color de fondo del contenedor
        borderRadius: const BorderRadius.all(Radius.circular(10)), // Borde redondeado del contenedor
      ),
      child: Column( // Columna que organiza sus hijos verticalmente
        crossAxisAlignment: CrossAxisAlignment.start, // Alineación de los hijos a la izquierda
        children: [
          Text( 
            "Storage Details", 
            style: TextStyle( 
              fontSize: 18, 
              fontWeight: FontWeight.w500, 
            ),
          ),
          SizedBox(height: defaultPadding), // Espacio entre el título y el gráfico
          Chart(), // Widget del gráfico
          StorageInfoCard( // Widget de la tarjeta de información de almacenamiento
            svgSrc: "assets/icons/Documents.svg", 
            title: "Documents Files", 
            amountOfFiles: "1.3GB", 
            numOfFiles: 1328, 
          ),
          // Tarjetas de información de almacenamiento adicionales con títulos, cantidades de archivos y números de archivos diferentes
          StorageInfoCard(
            svgSrc: "assets/icons/media.svg",
            title: "Media Files",
            amountOfFiles: "15.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/folder.svg",
            title: "Other Files",
            amountOfFiles: "1.3GB",
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: "assets/icons/unknown.svg",
            title: "Unknown",
            amountOfFiles: "1.3GB",
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
