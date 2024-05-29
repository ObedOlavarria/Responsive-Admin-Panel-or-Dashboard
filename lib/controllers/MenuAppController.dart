import 'package:flutter/material.dart';

class MenuAppController extends ChangeNotifier { // Controlador del menú de la aplicación
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // Clave global para el cajón

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey; // Método para obtener la clave del cajón

  void controlMenu() { // Método para controlar el menú
    if (!_scaffoldKey.currentState!.isDrawerOpen) { // Si el cajón no está abierto
      _scaffoldKey.currentState!.openDrawer(); // Abrir el cajón
    }
  }
}
