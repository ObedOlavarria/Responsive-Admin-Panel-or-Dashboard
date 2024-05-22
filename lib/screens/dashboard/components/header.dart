import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Widget que representa la cabecera del dashboard
class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // Disposición horizontal de los elementos
      children: [
        Text(
          "Dashboard", // Título de la cabecera
          style: Theme.of(context).textTheme.titleLarge, // Estilo del título
        ),
        Expanded(child: SearchField()), // Campo de búsqueda expandido
        ProfileCard() // Tarjeta de perfil
      ],
    );
  }
}

// Widget que representa la tarjeta de perfil
class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding), // Margen izquierdo
      padding: EdgeInsets.symmetric(), // Padding simétrico
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)), // Bordes redondeados
        border: Border.all(color: Colors.white10), // Borde con color y opacidad
      ),
      child: Row(
        // Disposición horizontal de los elementos
        children: [
          Image.asset(
            "assets/images/profile_pic.png", // Imagen de perfil
            height: 38, // Altura de la imagen
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2), // Padding horizontal
            child: Text("Angelina Jolie"), // Nombre del usuario
          ),
          Icon(Icons.keyboard_arrow_down), // Icono de flecha hacia abajo
        ],
      ),
    );
  }
}

// Widget que representa el campo de búsqueda
class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search", // Texto de sugerencia
        filled: true, // Fondo relleno
        border: OutlineInputBorder(
          borderSide: BorderSide.none, // Sin borde
          borderRadius: const BorderRadius.all(Radius.circular(10)), // Bordes redondeados
        ),
        suffixIcon: InkWell(
          onTap: () {}, // Acción al hacer clic
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)), // Bordes redondeados
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"), // Icono de búsqueda
          ),
        ),
      ),
    );
  }
}
