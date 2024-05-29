import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) { // Construye la interfaz de usuario del widget
    return SizedBox( // Contenedor de tamaño fijo
      height: 200, // Altura fija del gráfico
      child: Stack( // Pila que apila sus hijos uno encima del otro
        children: [
          PieChart( // Gráfico circular
            PieChartData( // Datos del gráfico circular
              sectionsSpace: 0, 
              centerSpaceRadius: 70, 
              startDegreeOffset: -90, 
              sections: paiChartSelectionData, // Secciones del gráfico circular
            ),
          ),
          Positioned.fill( // Posicionado que ocupa todo el espacio disponible
            child: Column( // Columna que organiza sus hijos verticalmente
              mainAxisAlignment: MainAxisAlignment.center, // Alineación principal centrada
              children: [
                SizedBox(height: defaultPadding), 
                Text( 
                  "29.1", 
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith( 
                    color: Colors.white, 
                    fontWeight: FontWeight.w600, // Peso de la fuente
                    height: 0.5, 
                  ),
                ),
                Text("of 1280GB") 
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionData = [ // Datos de las secciones del gráfico circular
  PieChartSectionData( // Datos de la primera sección
    color: primaryColor, // Color de la primera sección
    value: 25, // Valor de la primera sección
    showTitle: false, // No mostrar el título de la primera sección
    radius: 25, // Radio de la primera sección
  ),
  PieChartSectionData( 
    color: Color(0xFF26E5FF), 
    value: 20, 
    showTitle: false, 
    radius: 22, 
  ),
  PieChartSectionData( 
    color: Color(0xFFFFCF26), 
    value: 10, 
    showTitle: false, 
    radius: 19, 
  ),
  PieChartSectionData( 
    color: Color(0xFFEE2727), 
    value: 15, 
    showTitle: false, 
    radius: 16, 
  ),
  PieChartSectionData( 
    color: primaryColor.withOpacity(0.1), 
    value: 25, 
    showTitle: false, 
    radius: 13,
  ),
];
