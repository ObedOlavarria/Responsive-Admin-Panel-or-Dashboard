import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return Row( // Fila que organiza sus hijos horizontalmente
      children: [
        if (!Responsive.isDesktop(context)) // Si no es escritorio, muestra el icono del menú
          IconButton(
            icon: Icon(Icons.menu), 
            onPressed: context.read<MenuAppController>().controlMenu, // Función de control del menú
          ),
        if (!Responsive.isMobile(context)) // Si no es móvil, muestra el título del dashboard
          Text(
            "Dashboard", 
            style: Theme.of(context).textTheme.titleLarge, 
          ),
        if (!Responsive.isMobile(context)) // Si no es móvil, agrega un espacio flexible
          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1), // Espacio flexible con diferentes flex según el dispositivo
        Expanded(child: SearchField()), // Campo de búsqueda que se expande para llenar el espacio disponible
        ProfileCard() // Tarjeta de perfil
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return Container( // Contenedor que envuelve la tarjeta de perfil
      margin: EdgeInsets.only(left: defaultPadding), 
      padding: EdgeInsets.symmetric( 
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration( 
        color: secondaryColor, 
        borderRadius: const BorderRadius.all(Radius.circular(10)), 
        border: Border.all(color: Colors.white10), 
      ),
      child: Row( // Fila que organiza sus hijos horizontalmente
        children: [
          Image.asset( 
            "assets/images/profile_pic.png", 
            height: 38, 
          ),
          if (!Responsive.isMobile(context)) // Si no es móvil, muestra el nombre del usuario
            Padding( // Widget de relleno
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2), 
              child: Text("Angelina Jolie"), 
            ),
          Icon(Icons.keyboard_arrow_down), 
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return TextField( // Campo de texto para búsqueda
      decoration: InputDecoration( // Decoración del campo de texto
        hintText: "Search", // Texto de sugerencia
        fillColor: secondaryColor, // Color de fondo del campo de texto
        filled: true, // El campo de texto está lleno
        border: OutlineInputBorder( // Borde del campo de texto
          borderSide: BorderSide.none, // Sin borde
          borderRadius: const BorderRadius.all(Radius.circular(10)), // Borde redondeado
        ),
        suffixIcon: InkWell( 
          onTap: () {}, 
          child: Container( 
            padding: EdgeInsets.all(defaultPadding * 0.75), // Relleno del contenedor
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration( // Decoración del contenedor
              color: primaryColor, 
              borderRadius: const BorderRadius.all(Radius.circular(10)), // Borde redondeado
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"), 
          ),
        ),
      ),
    );
  }
}
