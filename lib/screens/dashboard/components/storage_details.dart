import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'storage_info_card.dart';

// Widget que muestra los detalles de almacenamiento
class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding), // Añade padding alrededor del contenido
      decoration: BoxDecoration(
        color: secondaryColor, // Color de fondo del contenedor
        borderRadius: const BorderRadius.all(Radius.circular(10)), // Bordes redondeados
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea al inicio del eje vertical
        children: [
          Text(
            "Storage Details", // Título de la sección
            style: TextStyle(
              fontSize: 18, // Tamaño de fuente del título
              fontWeight: FontWeight.w500, // Peso de fuente del título
            ),
          ),
          SizedBox(height: defaultPadding), // Espacio vertical entre elementos
          StorageInfoCard(
            svgSrc: "assets/icons/Documents.svg", // Ruta del icono SVG
            title: "Documents Files", // Título de la tarjeta
            amountOfFiles: "1.3GB", // Tamaño de los archivos
            numOfFiles: 1328, // Número de archivos
          ),
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
