import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Widget que representa el menú lateral
class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Menú lateral deslizable
      child: ListView(
        children: [
          DrawerHeader(
            // Encabezado del menú
            child: Image.asset("assets/images/logo.png"), // Logo de la aplicación
          ),
          // Elementos de la lista del menú
          DrawerListTile(
            title: "Dashboard", // Título del elemento
            svgSrc: "assets/icons/menu_dashboard.svg", // Icono SVG del elemento
            press: () {}, // Acción al hacer clic
          ),
          DrawerListTile(
            title: "Transaction",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Task",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Documents",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Store",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

// Widget que representa un elemento de la lista del menú
class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title, // Título del elemento
    required this.svgSrc, // Icono SVG del elemento
    required this.press, // Acción al hacer clic
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press, // Acción al hacer clic
      horizontalTitleGap: 0.0, // Espacio horizontal entre el icono y el texto
      leading: SvgPicture.asset(
        svgSrc, // Icono SVG
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn), // Filtro de color
        height: 16, // Altura del icono
      ),
      title: Text(
        title, // Título del elemento
        style: TextStyle(color: Colors.white54), // Estilo del texto
      ),
    );
  }
}
