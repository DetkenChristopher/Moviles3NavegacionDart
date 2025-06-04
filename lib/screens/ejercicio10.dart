import 'package:flutter/material.dart';


class Ejercicio10 extends StatelessWidget {
  const Ejercicio10({super.key});

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
       appBar: AppBar(title: Text("Ejercicio 10"),),
      body: Center(child: Column(
        children: [
          OutlinedButton(onPressed: ()=>Navigator.pop(context), child: Text("Regresar"))
        ],
      ))

    );
  }
}
//Se solicita un programa que evalúe si un estudiante puede participar en un 
//programa de intercambio estudiantil. El programa pedirá al usuario su edad, 
//nivel de inglés (básico, intermedio o avanzado) y promedio de calificaciones. 
//Si el estudiante tiene entre 16 y 25 años, un nivel de inglés intermedio o avanzado, 
//y un promedio de calificaciones mayor o igual a 8, 
//el programa imprimirá "El estudiante es apto para participar en el programa de intercambio". 
//En caso contrario, imprimirá "Lo siento, el estudiante no cumple con los requisitos para 
//el programa de intercambio".