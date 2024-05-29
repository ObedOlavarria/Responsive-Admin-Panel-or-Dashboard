import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String? svgSrc, title, totalStorage; // Icono SVG, título y almacenamiento total
  final int? numOfFiles, percentage; // Número de archivos y porcentaje
  final Color? color; // Color asociado

  CloudStorageInfo({ // Constructor de la clase
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.numOfFiles,
    this.percentage,
    this.color,
  });
}

List demoMyFiles = [ // Lista de datos de archivos de ejemplo
  CloudStorageInfo( // Datos del primer archivo
    title: "Documents", // Título del archivo
    numOfFiles: 1328, // Número de archivos
    svgSrc: "assets/icons/Documents.svg", // Icono SVG del archivo
    totalStorage: "1.9GB", // Almacenamiento total
    color: primaryColor, // Color asociado
    percentage: 35, // Porcentaje de uso
  ),
  CloudStorageInfo( // Datos del segundo archivo
    title: "Google Drive", // Título del archivo
    numOfFiles: 1328, // Número de archivos
    svgSrc: "assets/icons/google_drive.svg", // Icono SVG del archivo
    totalStorage: "2.9GB", // Almacenamiento total
    color: Color(0xFFFFA113), // Color asociado
    percentage: 35, // Porcentaje de uso
  ),
  CloudStorageInfo( // Datos del tercer archivo
    title: "One Drive", // Título del archivo
    numOfFiles: 1328, // Número de archivos
    svgSrc: "assets/icons/one_drive.svg", // Icono SVG del archivo
    totalStorage: "1GB", // Almacenamiento total
    color: Color(0xFFA4CDFF), // Color asociado
    percentage: 10, // Porcentaje de uso
  ),
  CloudStorageInfo( // Datos del cuarto archivo
    title: "Documents", // Título del archivo
    numOfFiles: 5328, // Número de archivos
    svgSrc: "assets/icons/drop_box.svg", // Icono SVG del archivo
    totalStorage: "7.3GB", // Almacenamiento total
    color: Color(0xFF007EE5), // Color asociado
    percentage: 78, // Porcentaje de uso
  ),
];
