import 'package:flutter/material.dart';


class Ejercicio11 extends StatelessWidget {
  const Ejercicio11({super.key});

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
//Se requiere un programa que determine si un estudiante es apto para una beca universitaria.
// El programa solicitará al usuario su promedio de calificaciones y el ingreso mensual de su familia. 
//Si el promedio de calificaciones es mayor o igual a 9 y el ingreso mensual de la familia es menor a 3000 dólares,
// el programa imprimirá "El estudiante es elegible para la beca".
// De lo contrario, imprimirá "Lo siento, el estudiante no es elegible para la beca".