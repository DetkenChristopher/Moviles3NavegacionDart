import 'package:flutter/material.dart';
import 'package:navegacion1/screens/ejercicio10.dart';
import 'package:navegacion1/screens/ejercicio11.dart';
import 'package:navegacion1/screens/ejercicio12.dart';

void main() {
  runApp(const Navegacion1());
}

class Navegacion1 extends StatelessWidget {
  const Navegacion1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menú de Ejercicios"),
        backgroundColor: const Color.fromRGBO(4, 117, 230, 1),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0475E6), Color(0xFF81D4FA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _titulo(),
              const SizedBox(height: 30),
              btnEjercicio1(context),
              const SizedBox(height: 15),
              btnEjercicio2(context),
              const SizedBox(height: 15),
              btnEjercicio3(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _titulo() {
  return const Text(
    "Selecciona una pregunta",
    style: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );
}

Widget btnEjercicio1(BuildContext context) {
  return _boton(
    context,
    "Pregunta 10",
    () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Ejercicio10()),
    ),
  );
}

Widget btnEjercicio2(BuildContext context) {
  return _boton(
    context,
    "Pregunta 11",
    () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Ejercicio11()),
    ),
  );
}

Widget btnEjercicio3(BuildContext context) {
  return _boton(
    context,
    "Pregunta 12",
    () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Ejercicio12()),
    ),
  );
}

Widget _boton(BuildContext context, String texto, VoidCallback onPressed) {
  return SizedBox(
    width: 220,
    height: 50,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFF0475E6),
        textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        shadowColor: Colors.black45,
      ),
      child: Text(texto),
    ),
  );
}
