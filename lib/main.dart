import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());  // Ejecuta la aplicación llamando a `MyApp`.
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Desactiva la etiqueta de modo debug.
      title: 'Flutter Admin Panel',  // Título de la aplicación.
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,  // Define el color de fondo del scaffold.
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),  // Aplica el tema de texto con la fuente Poppins y color blanco.
        canvasColor: secondaryColor,  // Define el color del canvas.
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuAppController(),  // Proveedor para `MenuAppController`.
          ),
        ],
        child: MainScreen(),  // Define la pantalla principal de la aplicación.
      ),
    );
  }
}
