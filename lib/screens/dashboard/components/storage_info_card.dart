import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  }) : super(key: key);

  final String title, svgSrc, amountOfFiles; // Título, ruta del SVG y cantidad de archivos
  final int numOfFiles; // Número de archivos

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return Container( // Contenedor que envuelve todo el widget
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration( // Decoración del contenedor
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)), // Borde del contenedor
        borderRadius: const BorderRadius.all( // Borde redondeado del contenedor
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row( // Fila que contiene los elementos del widget
        children: [
          SizedBox( // Widget contenedor con tamaño fijo
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc),
          ),
          Expanded( // Expande el widget para llenar el espacio disponible
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding), // Relleno horizontal
              child: Column( // Columna que organiza sus hijos verticalmente
                crossAxisAlignment: CrossAxisAlignment.start, // Alineación de los hijos a la izquierda
                children: [
                  Text( // 
                    title, 
                    maxLines: 1, 
                    overflow: TextOverflow.ellipsis, // Manejo del desbordamiento de texto
                  ),
                  Text( // Widget de texto para la cantidad de archivos
                    "$numOfFiles Files", // Texto que muestra el número de archivos
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white70), // 
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles) // Widget de texto para la cantidad de archivos
        ],
      ),
    );
  }
}
