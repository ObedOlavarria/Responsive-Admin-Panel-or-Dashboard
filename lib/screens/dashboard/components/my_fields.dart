import 'package:admin/models/MyFiles.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    final Size _size = MediaQuery.of(context).size; // Obtiene el tamaño de la pantalla
    return Column( // Columna que organiza sus hijos verticalmente
      children: [
        Row( // Fila que organiza sus hijos horizontalmente
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text( // Widget de texto para el título "My Files"
              "My Files", 
              style: Theme.of(context).textTheme.titleMedium, 
            ),// Botón
            ElevatedButton.icon( 
              style: TextButton.styleFrom( 
                padding: EdgeInsets.symmetric( 
                  horizontal: defaultPadding * 1.5, 
                  vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1), 
                ),
              ),
              onPressed: () {}, // Función de retrollamada cuando se presiona el botón
              icon: Icon(Icons.add), 
              label: Text("Add New"), 
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive( // Widget Responsive que elige diferentes diseños según el tamaño de la pantalla
          mobile: FileInfoCardGridView( // GridView para dispositivos móviles
            crossAxisCount: _size.width < 650 ? 2 : 4, // Número de elementos en la fila según el ancho de la pantalla
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1, // Relación de aspecto del elemento en la cuadrícula
          ),
          tablet: FileInfoCardGridView(), // GridView para tabletas
          desktop: FileInfoCardGridView( // GridView para escritorios
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4, // Relación de aspecto del elemento en la cuadrícula
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount; 
  final double childAspectRatio; // Relación de aspecto del elemento en la cuadrícula

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return GridView.builder( // Crea una cuadrícula de elementos con constructor de vista
      physics: NeverScrollableScrollPhysics(), // Desactiva el desplazamiento de la cuadrícula
      shrinkWrap: true, // Permite que la cuadrícula se ajuste a su contenido
      itemCount: demoMyFiles.length, // Número total de elementos en la cuadrícula
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // Delegate para definir la apariencia de la cuadrícula
      //Elemntos de la cuadricula
        crossAxisCount: crossAxisCount, 
        crossAxisSpacing: defaultPadding, 
        mainAxisSpacing: defaultPadding, 
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]), // Constructor de elementos en la cuadrícula
    );
  }
}
