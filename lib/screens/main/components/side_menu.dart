import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({ // Constructor para la clase SideMenu
    Key? key, // Clave opcional para identificar de manera única el widget
  }) : super(key: key); // Llama al constructor de la superclase StatelessWidget

  @override
  Widget build(BuildContext context) { // Anula el método build para construir la interfaz de usuario
    return Drawer( // Retorna un widget Drawer que crea un menú lateral desplegable
      child: ListView( // Crea un ListView para los elementos del menú
        children: [ // Lista de elementos del menú
          DrawerHeader( // Encabezado del menú
            child: Image.asset("assets/images/logo.png"), // Imagen del encabezado
          ),
          DrawerListTile( // Elemento de lista personalizado para Dashboard
            title: "Dashboard", // Título del elemento de lista
            svgSrc: "assets/icons/menu_dashboard.svg", // Ruta al icono SVG
            press: () {}, // Función de presionar para Dashboard
          ),
          // Resto de elementos de lista con títulos, rutas de SVG y funciones de presión similares
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({ // Constructor para la clase DrawerListTile
    Key? key, // Clave opcional para identificar de manera única el widget
    required this.title, // Título del elemento de lista (requerido)
    required this.svgSrc, // Ruta al icono SVG (requerido)
    required this.press, // Función de presionar (requerido)
  }) : super(key: key); // Llama al constructor de la superclase StatelessWidget

  final String title, svgSrc; // Variables para almacenar el título y la ruta del SVG
  final VoidCallback press; // Función de presionar que no toma argumentos y no devuelve ningún valor

  @override
  Widget build(BuildContext context) { // Anula el método build para construir la interfaz de usuario
    return ListTile( // Retorna un widget ListTile que representa un elemento de lista
      onTap: press, // Asigna la función de presionar al evento onTap del ListTile
      horizontalTitleGap: 0.0, // Espacio horizontal entre el icono y el texto
      leading: SvgPicture.asset( // Icono SVG a la izquierda del ListTile
        svgSrc, // Ruta al icono SVG
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn), // Filtro de color blanco para el icono
        height: 16, // Altura del icono
      ),
      title: Text( // Título del ListTile
        title, // Título del elemento de lista
        style: TextStyle(color: Colors.white54), // Estilo del texto
      ),
    );
  }
}
