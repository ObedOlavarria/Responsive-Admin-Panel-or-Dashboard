import 'package:admin/models/MyFiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info; // Información del almacenamiento en la nube

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return Container( // Contenedor que envuelve la tarjeta de información del archivo
      padding: EdgeInsets.all(defaultPadding), 
      decoration: BoxDecoration( 
        color: secondaryColor, 
        borderRadius: const BorderRadius.all(Radius.circular(10)), 
      ),
      child: Column( // Columna que organiza sus hijos verticalmente
        crossAxisAlignment: CrossAxisAlignment.start, // Alineación de los hijos a la izquierda
        mainAxisAlignment: MainAxisAlignment.spaceBetween, 
        children: [
          Row( // Fila que organiza sus hijos horizontalmente
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
              Container( //Contenedor 
                padding: EdgeInsets.all(defaultPadding * 0.75), 
                height: 40, 
                width: 40,
                decoration: BoxDecoration( // Decoración del contenedor
                  color: info.color!.withOpacity(0.1), // Color de fondo con opacidad
                  borderRadius: const BorderRadius.all(Radius.circular(10)), // Borde redondeado
                ),
                child: SvgPicture.asset( 
                  info.svgSrc!, 
                  colorFilter: ColorFilter.mode( // Filtro de color para la imagen
                      info.color ?? Colors.black, BlendMode.srcIn), // Modo de mezcla del filtro de color
                ),
              ),
              Icon(Icons.more_vert, color: Colors.white54) // Icono de más opciones
            ],
          ),
          Text( 
            info.title!, 
            maxLines: 1, 
            overflow: TextOverflow.ellipsis, // Desbordamiento de texto con puntos suspensivos
          ),
          ProgressLine( // Línea de progreso
            color: info.color, // Color de la línea de progreso
            percentage: info.percentage, // Porcentaje de progreso
          ),
          Row( // Fila que organiza sus hijos horizontalmente
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinea los hijos en el espacio entre ellos
            children: [
              Text( 
                "${info.numOfFiles} Files", 
                style: Theme.of(context) 
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white70), // Copia del estilo del texto con color específico
              ),
              Text( // Widget de texto para el almacenamiento total
                info.totalStorage!, // Almacenamiento total
                style: Theme.of(context) // Estilo del texto
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white), // Copia del estilo del texto con color específico
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor, 
    required this.percentage, // Porcentaje de progreso requerido
  }) : super(key: key);

  final Color? color;
  final int? percentage; // Porcentaje de progreso

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return Stack( // Pila que apila sus hijos uno encima del otro
      children: [
        Container( // Contenedor que representa la barra de fondo del progreso
          width: double.infinity, // Anchura del contenedor igual al ancho disponible
          height: 5, // Altura de la barra de progreso
          decoration: BoxDecoration( // Decoración del contenedor
            color: color!.withOpacity(0.1), // Color de fondo con opacidad
            borderRadius: BorderRadius.all(Radius.circular(10)), // Borde redondeado
          ),
        ),
        LayoutBuilder( // Constructor de diseño que proporciona información sobre las restricciones de diseño
          builder: (context, constraints) => Container( // Contenedor que representa la barra de progreso
            width: constraints.maxWidth * (percentage! / 100), // Anchura del contenedor según el porcentaje de progreso
            height: 5, // Altura de la barra de progreso
            decoration: BoxDecoration( // Decoración del contenedor
              color: color, // Color de la línea de progreso
              borderRadius: BorderRadius.all(Radius.circular(10)), 
            ),
          ),
        ),
      ],
    );
  }
}

