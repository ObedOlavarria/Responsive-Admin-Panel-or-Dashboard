import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

// Widget que muestra información sobre el almacenamiento
class StorageInfoCard extends StatelessWidget {
  const StorageInfoCard({
    Key? key,
    required this.title, // Título de la tarjeta
    required this.svgSrc, // Ruta del icono SVG
    required this.amountOfFiles, // Cantidad total de archivos
    required this.numOfFiles, // Número de archivos
  }) : super(key: key);

  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding), // Espacio superior
      padding: EdgeInsets.all(defaultPadding), // Padding interno
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)), // Borde con opacidad
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultPadding), // Bordes redondeados
        ),
      ),
      child: Row(
        // Disposición horizontal de los elementos
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svgSrc), // Icono SVG
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding), // Padding horizontal
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Alineación al inicio
                children: [
                  Text(
                    title, // Título de la tarjeta
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis, // Trunca el texto si es muy largo
                  ),
                  Text(
                    "$numOfFiles Files", // Número de archivos
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.white70), // Estilo del texto
                  ),
                ],
              ),
            ),
          ),
          Text(amountOfFiles) // Cantidad total de archivos
        ],
      ),
    );
  }
}
