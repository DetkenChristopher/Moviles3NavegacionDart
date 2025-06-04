import 'package:flutter/material.dart';


class Ejercicio12 extends StatelessWidget {
  const Ejercicio12({super.key});

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

//Se necesita un programa para evaluar si un aspirante a un puesto de trabajo es apto para una entrevista. 
//El programa solicitará al usuario su edad y la cantidad de años de experiencia laboral. 
//Si el aspirante tiene entre 25 y 35 años, y al menos 3 años de experiencia laboral, el programa imprimirá "El aspirante puede ser seleccionado para una entrevista". 
//En caso contrario, imprimirá "Lo siento, el aspirante no cumple con los requisitos para la entrevista".