import 'package:admin/models/RecentFile.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return Container( // Contenedor que envuelve todo el widget
      padding: EdgeInsets.all(defaultPadding), // Relleno en todos los lados
      decoration: BoxDecoration( 
        color: secondaryColor, 
        borderRadius: const BorderRadius.all(Radius.circular(10)), // Borde redondeado del contenedor
      ),
      child: Column( // Columna que organiza sus hijos verticalmente
        crossAxisAlignment: CrossAxisAlignment.start, // Alineación de los hijos a la izquierda
        children: [
          Text( // Widget de texto para el título
            "Recent Files", // Título
            style: Theme.of(context).textTheme.titleMedium, // Estilo del texto
          ),
          SizedBox( 
            width: double.infinity, 
            child: DataTable( 
              columnSpacing: defaultPadding, 
              columns: [ 
                DataColumn( 
                  label: Text("File Name"),
                ),
                DataColumn( 
                  label: Text("Date"), 
                ),
                DataColumn( 
                  label: Text("Size"), 
                ),
              ],
              rows: List.generate( // Genera las filas de la tabla a partir de una lista de datos
                demoRecentFiles.length, // Número de elementos en la lista de archivos recientes
                (index) => recentFileDataRow(demoRecentFiles[index]), // Genera una fila de datos para cada archivo reciente
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo) { // Función para generar una fila de datos para un archivo reciente
  return DataRow( // Retorna una fila de datos
    cells: [
      DataCell( // Celda de datos para el nombre del archivo
        Row( // Fila horizontal que contiene el icono del archivo y el nombre del archivo
          children: [
            SvgPicture.asset( 
              fileInfo.icon!, 
              height: 30, 
              width: 30, 
            ),
            Padding( // Widget que agrega relleno a su hijo
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding), // Relleno horizontal
              child: Text(fileInfo.title!), // Widget de texto para el nombre del archivo
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)), // Celda de datos para la fecha del archivo
      DataCell(Text(fileInfo.size!)), // Celda de datos para el tamaño del archivo
    ],
  );
}
