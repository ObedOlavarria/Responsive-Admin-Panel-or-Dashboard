import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';

// Este widget representa una tarjeta de información de archivo
class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var info; // Información del archivo que se mostrará
    return Container(
      padding: EdgeInsets.all(defaultPadding), // Espaciado alrededor del contenido
      decoration: BoxDecoration(
        color: secondaryColor, // Color de fondo de la tarjeta
        borderRadius: const BorderRadius.all(Radius.circular(10)), // Bordes redondeados
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Alinea al inicio del eje vertical
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Espacia uniformemente los elementos
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribuye los elementos horizontalmente
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.75), // Espaciado interno
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  // Decoración del contenedor del icono
                ),
                child: SvgPicture.asset(
                  info.svgSrc!, // Icono SVG del archivo
                  colorFilter: ColorFilter.mode(
                      info.color ?? Colors.black, BlendMode.srcIn), // Color del icono
                ),
              ),
              Icon(Icons.more_vert, color: Colors.white54) // Icono de más opciones
            ],
          ),
          Text(
            info.title!, // Título del archivo
            maxLines: 1,
            overflow: TextOverflow.ellipsis, // El texto se trunca si es muy largo
          ),
          ProgressLine(
            color: info.color, // Color de la línea de progreso
            percentage: info.percentage, // Porcentaje de progreso
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Distribuye los elementos horizontalmente
            children: [
              Text(
                "${info.numOfFiles} Files", // Número de archivos
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white70), // Estilo del texto
              ),
              Text(
                info.totalStorage!, // Espacio total de almacenamiento
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.white), // Estilo del texto
              ),
            ],
          )
        ],
      ),
    );
  }
}

// Este widget representa una línea de progreso
class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor, // Color por defecto
    required this.percentage, // Porcentaje de progreso
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity, // Ancho completo del contenedor padre
          height: 5, // Altura de la línea de progreso
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1), // Color de fondo con opacidad
            borderRadius: BorderRadius.all(Radius.circular(10)), // Bordes redondeados
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100), // Ancho proporcional al porcentaje
            height: 5, // Altura de la línea de progreso
            decoration: BoxDecoration(
              color: color, // Color de la línea de progreso
              borderRadius: BorderRadius.all(Radius.circular(10)), // Bordes redondeados
            ),
          ),
        ),
      ],
    );
  }
}
