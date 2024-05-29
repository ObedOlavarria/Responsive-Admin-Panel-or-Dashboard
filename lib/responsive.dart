import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  // Estas funciones nos ayudan a determinar el tipo de dispositivo más adelante.
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // Si el ancho es mayor o igual a 1100, devuelve el widget `desktop`.
    if (_size.width >= 1100) {
      return desktop;
    }
    // Si el ancho está entre 850 y 1100, y `tablet` no es nulo, devuelve el widget `tablet`.
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Si el ancho es menor a 850, devuelve el widget `mobile`.
    else {
      return mobile;
    }
  }
}
