import 'package:flutter/material.dart';

class Ejercicio10 extends StatelessWidget {
  const Ejercicio10({super.key});

  @override
  Widget build(BuildContext context) {
    return const Cuerpo(); // Ya no usamos MaterialApp aquí
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Programa de intercambio")),
      body: Center(
        child: SingleChildScrollView( // Previene overflow si el teclado aparece
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Verificacion(context),
              SizedBox(height: 20),
              OutlinedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Regresar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget Verificacion(BuildContext context) {
  final TextEditingController _edad = TextEditingController();
  final TextEditingController _nivelIngles = TextEditingController();
  final TextEditingController _promedio = TextEditingController();

  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
      children: [
        TextField(
          controller: _edad,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Ingrese su edad",
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: _nivelIngles,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Ingrese su nivel de inglés (básico, intermedio o avanzado)",
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: _promedio,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: "Ingrese su promedio",
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            String resultado = intercambioVerificacion(
              _edad.text,
              _nivelIngles.text,
              _promedio.text,
            );
            mensajeConfirmacion(context, resultado);
          },
          child: Text("Verificación"),
        ),
      ],
    ),
  );
}

String intercambioVerificacion(String edadStr, String nivelIngles, String promedioStr) {
  int edad = int.tryParse(edadStr) ?? 0;
  double promedio = double.tryParse(promedioStr) ?? 0.0;
  nivelIngles = nivelIngles.toLowerCase().trim();

  if (edad >= 16 &&
      edad <= 25 &&
      (nivelIngles == "intermedio" || nivelIngles == "avanzado") &&
      promedio >= 8.0) {
    return "El estudiante es apto para participar en el programa de intercambio.";
  } else {
    return "Lo siento, el estudiante no cumple con los requisitos para el programa de intercambio.";
  }
}

void mensajeConfirmacion(BuildContext context, String mensaje) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("Resultado"),
      content: Text(mensaje),
      actions: [
        FilledButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Salir"),
        ),
      ],
    ),
  );
}
