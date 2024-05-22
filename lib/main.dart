import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// Definición de colores usados en la aplicación
const bgColor = Color(0xFF212332); // Color de fondo principal
const secondaryColor = Color(0xFF2A2D3E); // Color secundario usado para elementos de la interfaz

void main() {
  runApp(MyApp()); // Punto de entrada de la aplicación, ejecuta MyApp
}

class MyApp extends StatelessWidget {
  // Este widget representa la raíz de la aplicación
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta el banner de modo debug
      title: 'Flutter Admin Panel', // Título de la aplicación
      theme: ThemeData.dark().copyWith(
        // Tema oscuro con modificaciones personalizadas
        scaffoldBackgroundColor: bgColor, // Color de fondo para Scaffold
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white), // Fuente Poppins para el texto, con color blanco
        canvasColor: secondaryColor, // Color secundario para elementos de canvas
      ),
      home: MultiProvider(
        providers: [
          // Se pueden agregar diferentes providers aquí para la gestión del estado
        ],
        child: MainScreen(), // Pantalla principal de la aplicación
      ),
    );
  }
}
