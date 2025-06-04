import 'package:flutter/material.dart';
import 'package:navegacion1/screens/ejercicio10.dart';
import 'package:navegacion1/screens/ejercicio11.dart';
import 'package:navegacion1/screens/ejercicio12.dart';

void main(){
  runApp(Navegacion1());



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
      appBar: AppBar(title: Text("Ejercicio 00"),),
      body: Container(
        decoration: BoxDecoration(
          color: (Color.fromRGBO(4, 117, 230, 1)),
        ),
        child: Center(
          child: Column(children: [
            btnEjercicio1(context),
            btnEjercicio2(context),
            btnEjercicio3(context),
          
          ],),
        ),

      ),
    );
  }
}

Widget btnEjercicio1(context){
  return(
    FilledButton(onPressed: 
    ()=>Navigator.push(context, 
    MaterialPageRoute(builder: (context)=>Ejercicio10())), 
    child: Text("Pregunta 10"))
  );

}

Widget btnEjercicio2(context){
  return(
    FilledButton(onPressed: 
    ()=>Navigator.push(context,
     MaterialPageRoute(builder: (context)=> Ejercicio11())),
    child: Text("Pregunta 11"))
  );

}

Widget btnEjercicio3(context){
  return(
    FilledButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Ejercicio12())), child: Text("Pregunta 12"))
  );

}