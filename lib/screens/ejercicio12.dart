import 'package:flutter/material.dart';

class Ejercicio12 extends StatelessWidget {
  const Ejercicio12({super.key});

  @override
  Widget build(BuildContext context) {
    return const Cuerpo(); // No usar MaterialApp interno
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Evaluación de aspirantes")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Expanded(child: EvaluacionFormulario()),
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

class EvaluacionFormulario extends StatefulWidget {
  const EvaluacionFormulario({super.key});

  @override
  State<EvaluacionFormulario> createState() => _EvaluacionFormularioState();
}

class _EvaluacionFormularioState extends State<EvaluacionFormulario> {
  final TextEditingController edadController = TextEditingController();
  final TextEditingController experienciaController = TextEditingController();

  String resultado = "";

  void verificarAspirante() {
    int edad = int.tryParse(edadController.text) ?? 0;
    int experiencia = int.tryParse(experienciaController.text) ?? 0;

    if (edad >= 25 && edad <= 35 && experiencia >= 3) {
      resultado = "El aspirante puede ser seleccionado para una entrevista.";
    } else {
      resultado = "Lo siento, el aspirante no cumple con los requisitos para la entrevista.";
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
    return SingleChildScrollView(
      child: Column(
        children: [
          TextField(
            controller: edadController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Edad del aspirante",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: experienciaController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Años de experiencia laboral",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: verificarAspirante,
            child: Text("Evaluar Aspirante"),
          ),
        ],
      ),
    );
  }
}
