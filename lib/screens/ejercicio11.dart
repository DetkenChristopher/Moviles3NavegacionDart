import 'package:flutter/material.dart';

class Ejercicio11 extends StatelessWidget {
  const Ejercicio11({super.key});

  @override
  Widget build(BuildContext context) {
    return const Cuerpo(); // Eliminado MaterialApp
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Evaluación de beca")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Expanded(child: BecaFormulario()),
            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Regresar"),
            ),
          ],
        ),
      ),
    );
  }
}

class BecaFormulario extends StatefulWidget {
  const BecaFormulario({super.key});

  @override
  State<BecaFormulario> createState() => _BecaFormularioState();
}

class _BecaFormularioState extends State<BecaFormulario> {
  final TextEditingController promedioController = TextEditingController();
  final TextEditingController ingresoController = TextEditingController();

  String resultado = "";

  void verificarBeca() {
    double promedio = double.tryParse(promedioController.text) ?? 0.0;
    double ingreso = double.tryParse(ingresoController.text) ?? 0.0;

    if (promedio >= 9.0 && ingreso < 3000) {
      resultado = "El estudiante es elegible para la beca.";
    } else {
      resultado = "Lo siento, el estudiante no es elegible para la beca.";
    }

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text("Resultado"),
        content: Text(resultado),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cerrar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // Para evitar overflow si el teclado aparece
      child: Column(
        children: [
          TextField(
            controller: promedioController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Promedio de calificaciones",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: ingresoController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Ingreso mensual familiar (\$)",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: verificarBeca,
            child: Text("Verificar Elegibilidad"),
          ),
        ],
      ),
    );
  }
}
